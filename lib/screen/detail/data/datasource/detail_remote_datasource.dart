import '../../../../share/api/api_service.dart';
import '../../../../share/api/model/detail_response.dart';

class DetailDataSource {
  final ApiService apiService;

  DetailDataSource(this.apiService);

  Future<DetailResponse> getRepositoryDetail({
    required String owner,
    required String repo,
  }) async {
    final response = await apiService.getRepositoryDetail(owner, repo);
    return response;
  }
}
