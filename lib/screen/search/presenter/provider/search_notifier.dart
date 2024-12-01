import 'dart:async';

import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../share/api/model/search_response.dart';
import '../../../../share/logger/provider/logger_provider.dart';
import '../../domain/provider/search_repository_provider.dart';
import '../../domain/repository/search_repository.dart';
import '../../model/search_param.dart';
import '../state/search_state.dart';

part 'search_notifier.g.dart';

@riverpod
class SearchStateNotifier extends _$SearchStateNotifier {
  late final SearchRepository repository;
  late final Logger logger;

  SearchParam searchParam = const SearchParam();
  Timer? _initSearchDebounceTimer;
  Timer? _fetchMoreDebounceTimer;


  bool get isFetchingAllow =>
      state.fetchState != SearchRepositoryFetchState.initLoading &&
          state.fetchState != SearchRepositoryFetchState.moreLoading;

  @override
  SearchState build() {
    repository = ref.watch(searchRepositoryImplProvider);
    logger = ref.watch(loggerProvider);
    return const SearchState();
  }

  ///fetchMoreData when slide to the bottom
  Future<void> fetchMoreData() async {
    _fetchMoreDebounceTimer?.cancel();

    _initSearchDebounceTimer = Timer(const Duration(milliseconds: 300), () async {
      ///do nothing if reach max page
      if(state.fetchState == SearchRepositoryFetchState.max) return;
      if(state.fetchState == SearchRepositoryFetchState.init) return;

      if (isFetchingAllow) {
        state = state.copyWith(
            fetchState: SearchRepositoryFetchState.moreLoading
        );

        _requestRepositoryApi('fetchMoreData');
      }
    });
  }

  Future<void> startSearch() async{
    ///TODO: do something before search
    _searchAgain();
  }

  ///#Support function -> Api search
  ///Get new Data when keyword or condition renew
  Future<void> _searchAgain() async{
    logger.d('$runtimeType: searchAgain start, search new with new condition');
    _initSearchDebounceTimer?.cancel();

    _initSearchDebounceTimer = Timer(const Duration(milliseconds: 500), () async {
      if (isFetchingAllow) {
        logger.d('$runtimeType: searchAgain success, use api to search');

        ///reset param
        state = const SearchState(
            fetchState: SearchRepositoryFetchState.initLoading
        );

        _requestRepositoryApi('search again');
      }
    });
  }

  Future<void> _requestRepositoryApi(String tag) async {
    searchParam = searchParam.copyWith(page: state.currentPage);
    final response = await repository.getRepositoryList(searchParam: searchParam);

    logger.d('$runtimeType: $tag success, response value = $response');

    _updateStateFromResponse(response);
  }

  void _updateStateFromResponse(SearchResponse response) {
    final newRepositoryList = [...state.repositoryList, ...?response.items];
    state = state.copyWith(
      repositoryList: newRepositoryList,
      fetchState: newRepositoryList.length >= state.total
          ? SearchRepositoryFetchState.max
          : SearchRepositoryFetchState.loaded,
      total: response.totalCount ?? 0,
      currentPage: state.currentPage + 1,
    );
  }
}