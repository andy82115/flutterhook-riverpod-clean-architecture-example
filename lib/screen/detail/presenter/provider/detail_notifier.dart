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

  @override
  DetailState build() {
    repository = ref.watch(detailRepositoryImplProvider);
    logger = ref.watch(loggerProvider);
    return const DetailState();
  }

  Future<void> fetchData({
    required String owner,
    required String repo
  }) async{
    state = state.copyWith(
        fetchState: DetailFetchState.initLoading
    );

    final response = await repository.getRepositoryDetail(owner: owner, repo: repo);

    state = state.copyWith(
        fetchState: DetailFetchState.loaded,
        detailResponse: response
    );
  }
}