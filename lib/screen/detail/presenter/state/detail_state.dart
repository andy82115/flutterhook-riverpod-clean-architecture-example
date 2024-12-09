import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../share/api/model/detail_response.dart';

part 'detail_state.freezed.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(DetailFetchState.init) DetailFetchState fetchState,
    @Default(DetailResponse()) DetailResponse detailResponse,
  }) = _DetailState;
}

enum DetailFetchState {
  init,
  initLoading,
  loaded,
  fail,
}
