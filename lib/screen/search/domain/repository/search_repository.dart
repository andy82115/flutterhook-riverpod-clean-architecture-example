import '../../../../share/api/model/search_response.dart';
import '../../model/search_param.dart';

abstract class SearchRepository {
  Future<SearchResponse> getRepositoryList({
    required SearchParam searchParam,
  });
}
