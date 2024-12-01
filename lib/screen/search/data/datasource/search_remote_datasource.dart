import '../../../../share/api/api_service.dart';
import '../../../../share/api/model/search_response.dart';
import '../../model/search_param.dart';

class SearchDataSource {
  final ApiService apiService;
  SearchDataSource(this.apiService);

  Future<SearchResponse> getRepositoryList({
        required SearchParam searchParam,
  }) async{
    final response = await apiService.getRepositoryList(
      searchParam.queryFilter.combineQueryString(),
      searchParam.sort.name,
      searchParam.order.name,
      searchParam.perPage,
      searchParam.page,
    );
    return response;
  }
}