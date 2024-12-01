import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_state.freezed.dart';

@freezed
class ApiErrorState with _$ApiErrorState{
  const factory ApiErrorState({
    @Default(ErrorState.noError) errorState,
    @Default([]) List<Future<void> Function()> retryList,
  }) = _ApiErrorState;
}

enum ErrorState{
  error,
  retrying,
  noError,
}