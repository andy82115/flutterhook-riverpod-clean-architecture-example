import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../logger/provider/logger_provider.dart';
import '../api_service.dart';

part 'api_provider.g.dart';

@riverpod
ApiService apiService(Ref ref) {
  ///This token will stay in 30 days. Please replace your token with it.
  ///このトークンは30日間有効です。自分のを利用してください。
  // const String token = 'YOUR GITHUB TOKEN';
  const String token = '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';

  final logger = ref.watch(loggerProvider);

  final Dio dio = Dio()..interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      options.headers['Authorization'] = 'Bearer $token';
      logger.d('---interceptor--- onRequest: ${options.uri}');
      return handler.next(options);
    },
    onResponse: (response, handler) {
      logger.d('---interceptor--- onResponse: ${response.statusCode}');
      return handler.next(response);
    },
    onError: (DioException e, handler) {
      logger.d('---interceptor--- onError: ${e.message}');
      return handler.next(e);
    },
  ));

  return ApiService(dio);
}