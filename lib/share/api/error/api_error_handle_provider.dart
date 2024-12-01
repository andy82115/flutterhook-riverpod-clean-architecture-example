import 'package:dio/dio.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/error/state/api_error_state.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/logger/provider/logger_provider.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_error_handle_provider.g.dart';

@riverpod
class ApiErrorHandleNotifier extends _$ApiErrorHandleNotifier {
  late final Logger logger;

  @override
  ApiErrorState build() {
    logger = ref.watch(loggerProvider);
    return const ApiErrorState();
  }

  void forceBack(){
    state = state.copyWith(
      errorState: ErrorState.noError,
    );
  }

  void reportError(){
    state = state.copyWith(
        errorState: state.errorState,
    );
  }

  void addToRetryList(Exception e, Future<void> Function() retry) {
    if ( e is DioException ){
      logger.e('$runtimeType, add to retry list ${retry.runtimeType}');
      state = state.copyWith(
        errorState: state.errorState == ErrorState.noError
            ? ErrorState.error
            : state.errorState,
        retryList: [...state.retryList, retry]
      );
    }
  }

  Future<void> doRetry() async{
    if (state.retryList.isEmpty) return;

    final list = [...state.retryList];
    state = state.copyWith(
      errorState: ErrorState.retrying,
      retryList: [],
    );

    await Future.delayed(const Duration(seconds: 2));

    for(var retry in list){
      logger.e('$runtimeType, retry function ${retry.runtimeType}');
      await retry();
      await Future.delayed(const Duration(microseconds: 200));
    }

    if (state.retryList.isEmpty) {
      state = state.copyWith(
        errorState: ErrorState.noError,
      );
    }
    else {
      state = state.copyWith(
        errorState: ErrorState.error,
      );
    }
  }

  bool canRetry() {
    return state.retryList.isEmpty;
  }
}