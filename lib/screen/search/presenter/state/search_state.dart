import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../share/api/model/search_response.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState{
  const factory SearchState({
    @Default([]) List<Item> repositoryList,
    @Default(SearchRepositoryFetchState.init) SearchRepositoryFetchState fetchState,
    @Default(50) int total,
    @Default(1) int currentPage,
  }) = _SearchState;
}

enum SearchRepositoryFetchState {
  init,
  initLoading,
  loaded,
  fail,
  moreLoading,
  max, ///no more data for fetching
}