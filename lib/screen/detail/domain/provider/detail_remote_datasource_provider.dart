import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../share/api/api_service.dart';
import '../../data/datasource/detail_remote_datasource.dart';

part 'detail_remote_datasource_provider.g.dart';

@riverpod
DetailDataSource detailDatasource(Ref ref, ApiService apiService) {
  return DetailDataSource(apiService);
}