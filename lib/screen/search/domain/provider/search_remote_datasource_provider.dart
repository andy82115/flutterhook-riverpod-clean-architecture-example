import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../share/api/api_service.dart';
import '../../data/datasource/search_remote_datasource.dart';

part 'search_remote_datasource_provider.g.dart';

@riverpod
SearchDataSource searchDatasource(Ref ref, ApiService apiService) {
  return SearchDataSource(apiService);
}