import 'package:flutter_hook_riverpod_clean_architecture/share/api/api_service.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/model/detail_response.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/model/search_response.dart';
import 'package:flutter_hook_riverpod_clean_architecture/share/api/provider/api_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  final providerContainer = ProviderContainer();
  late ApiService apiService;

  setUp(() {
    apiService = providerContainer.read(apiServiceProvider);
  });

  ///Remove skip if you need this test.
  ///このテストが必要な場合は、スキップを削除してください。
  group('Api test', (){
    test('Api test get detail (with internet)', () async {
      // arrange
      try {
        final response = await apiService.getRepositoryDetail('square', 'retrofit');

        expect(response, isA<DetailResponse>());
      } catch (e) {
        fail('API call failed: $e');
      }
    },
        skip: 'Skip for test which need internet'
    );

    test('Api test get  (with internet)', () async {
      // arrange
      try {
        ///Page min is 1
        final response = await apiService.getRepositoryList('retrofit', 'asc', 'updated', 2, 1);

        expect(response, isA<SearchResponse>());
      } catch (e) {
        fail('API call failed: $e');
      }
    },
        skip: 'Skip for test which need internet'
    );
  });

  tearDown(() {
    providerContainer.dispose();
  });
}