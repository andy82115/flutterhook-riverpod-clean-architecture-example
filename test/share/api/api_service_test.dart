import 'dart:convert';

import 'package:flutter_hook_riverpod_clean_architecture/share/api/api_service.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/model/detail_response.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/model/search_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'mock_json_data.dart';

class MockApiService extends Mock implements ApiService {}

void main() {
  late ApiService apiService;
  late ApiMockJsonImpl apiMockJson;

  setUp(() {
    apiService = MockApiService();
    apiMockJson = ApiMockJsonImpl();
  });

  group('Api test', () {
    test('Api test normal response check', () async {
      when(() => apiService.getRepositoryDetail(any(), any())).thenAnswer(
          (_) async =>
              DetailResponse.fromJson(jsonDecode(apiMockJson.mockDetailJson)));

      when(() =>
              apiService.getRepositoryList(any(), any(), any(), any(), any()))
          .thenAnswer((_) async =>
              SearchResponse.fromJson(jsonDecode(apiMockJson.mockSearchJson)));

      final responseDetail =
          await apiService.getRepositoryDetail('owner', 'repo');
      final responseSearch =
          await apiService.getRepositoryList('query', 'sort', 'order', 2, 1);

      expect(responseDetail, isA<DetailResponse>());
      expect(responseSearch, isA<SearchResponse>());
    });
  });
}
