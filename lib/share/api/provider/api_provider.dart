import 'package:dio/dio.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/error/api_error_handle_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../main/app_env.dart';
import '../../logger/provider/logger_provider.dart';
import '../api_service.dart';

part 'api_provider.g.dart';

@riverpod
ApiService apiService(Ref ref) {
  ///This token will stay in 30 days. Please replace your token with it.
  ///このトークンは30日間有効です。自分のを利用してください。
  String token = EnvInfo.gitToken;
  String baseUrl = EnvInfo.baseUrl;

  final logger = ref.watch(loggerProvider);
  final apiErrorHandle = ref.watch(apiErrorHandleNotifierProvider.notifier);

  final Dio dio = Dio()..interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      options.headers['Authorization'] = 'Bearer $token';
      options.baseUrl = baseUrl;

        ///The normal Options.uri will encode Parameter, where this API don't need it
        ///通常のOptions.uriはParameterをエンコードするが、このAPIはそれを必要としない。
        if (options.path.startsWith('/search/repositories')) {
          final myRequestOptions = MyRequestOptions()
            ..path = options.path
            ..baseUrl = options.baseUrl
            ..queryParameters = options.queryParameters;
          logger.d('---interceptor--- onRequest: ${myRequestOptions.uri}');
          return handler.next(myRequestOptions);
        }

        logger.d('---interceptor--- onRequest: ${options.uri}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        logger.d('---interceptor--- onResponse: ${response.statusCode}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        logger.d('---interceptor--- onError: ${e.message}');
        apiErrorHandle.reportError();
        return handler.next(e);
      },
    ));

  return ApiService(dio);
}

class MyRequestOptions extends RequestOptions {
  @override
  Uri get uri {
    String url = path;
    if (!url.startsWith(RegExp(r'https?:'))) {
      url = baseUrl + url;
      final s = url.split(':/');
      if (s.length == 2) {
        url = '${s[0]}:/${s[1].replaceAll('//', '/')}';
      }
    }

    final queryParameters = this.queryParameters;

    if (queryParameters.isNotEmpty) {
      final queryString = queryParameters.entries.map((e) {
        return '${e.key}=${e.value}';
      }).join('&');

      url += (url.contains('?') ? '&' : '?') + queryString;
    }
    return Uri.parse(url).normalizePath();
  }
}
