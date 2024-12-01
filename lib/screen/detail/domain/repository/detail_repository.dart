import '../../../../share/api/model/detail_response.dart';

abstract class DetailRepository {
  Future<DetailResponse> getRepositoryDetail({
    required String owner,
    required String repo,
  });
}