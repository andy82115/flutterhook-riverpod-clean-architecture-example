import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/error_logger.dart';

import 'model/detail_response.dart';
import 'model/search_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://api.github.com/')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @GET('/search/repositories')
  Future<SearchResponse> getRepositoryList(
    @Query('q', encoded: true) String query,
    @Query('sort') String sort,
    @Query('order') String order,
    @Query('per_page') int perPage,
    @Query('page') int page,
  );

  @GET('/repos/{owner}/{repo}')
  Future<DetailResponse> getRepositoryDetail(
    @Path('owner') String owner,
    @Path('repo') String repo,
  );
}
