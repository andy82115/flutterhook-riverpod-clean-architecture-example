import 'package:flutter_hook_riverpod_clean_architecture/screen/search/domain/provider/search_remote_datasource_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../share/api/provider/api_provider.dart';
import '../../data/repository_impl/search_repository_impl.dart';

part 'search_repository_provider.g.dart';

@riverpod
SearchRepositoryImpl searchRepositoryImpl(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  final datasource = ref.watch(searchDatasourceProvider(apiService));
  return SearchRepositoryImpl(datasource);
}
