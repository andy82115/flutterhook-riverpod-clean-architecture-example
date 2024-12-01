import 'package:flutter_hook_riverpod_clean_architecture/share/api/error/api_error_handle_provider.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../share/logger/provider/logger_provider.dart';
import '../../domain/provider/detail_repository_provider.dart';
import '../../domain/repository/detail_repository.dart';
import '../state/detail_state.dart';

part 'detail_notifier.g.dart';

@riverpod
class DetailStateNotifier extends _$DetailStateNotifier {
  late final DetailRepository repository;
  late final Logger logger;
  late final ApiErrorHandleNotifier apiErrorHandleNotifier;

  @override
  DetailState build() {
    repository = ref.watch(detailRepositoryImplProvider);
    logger = ref.watch(loggerProvider);
    apiErrorHandleNotifier = ref.watch(apiErrorHandleNotifierProvider.notifier);
    return const DetailState();
  }

  Future<void> fetchData({
    required String owner,
    required String repo
  }) async{
    state = state.copyWith(
        fetchState: DetailFetchState.initLoading
    );

    try {
      final response = await repository.getRepositoryDetail(owner: owner, repo: repo);

      state = state.copyWith(
          fetchState: DetailFetchState.loaded,
          detailResponse: response
      );
    }catch(e) {
      if (e is Exception) {
        apiErrorHandleNotifier.addToRetryList(e, () async{
          await fetchData(owner: owner, repo: repo);
        });
      }
    }
  }
}