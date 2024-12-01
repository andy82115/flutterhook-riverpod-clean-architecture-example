import '../../../../share/api/model/detail_response.dart';
import '../../domain/repository/detail_repository.dart';
import '../datasource/detail_remote_datasource.dart';

class DetailRepositoryImpl implements DetailRepository {
  final DetailDataSource remoteDatasource;
  DetailRepositoryImpl(this.remoteDatasource);

  @override
  Future<DetailResponse> getRepositoryDetail({required String owner, required String repo}) {
    return remoteDatasource.getRepositoryDetail(owner: owner, repo: repo);
  }
}