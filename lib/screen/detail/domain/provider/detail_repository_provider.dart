import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../share/api/provider/api_provider.dart';
import '../../data/repository_impl/detail_repository_impl.dart';
import 'detail_remote_datasource_provider.dart';

part 'detail_repository_provider.g.dart';

@riverpod
DetailRepositoryImpl detailRepositoryImpl(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  final datasource = ref.watch(detailDatasourceProvider(apiService));
  return DetailRepositoryImpl(datasource);
}
