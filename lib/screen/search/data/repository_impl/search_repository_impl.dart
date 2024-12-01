import '../../../../share/api/model/search_response.dart';
import '../../domain/repository/search_repository.dart';
import '../../model/search_param.dart';
import '../datasource/search_remote_datasource.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchDataSource remoteDatasource;
  SearchRepositoryImpl(this.remoteDatasource);

  @override
  Future<SearchResponse> getRepositoryList({required SearchParam searchParam}) {
    return remoteDatasource.getRepositoryList(searchParam: searchParam);
  }
}