import 'package:flutter_hook_riverpod_clean_architecture/screen/search/model/search_param.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ///Remove skip if you need this test.
  ///このテストが必要な場合は、スキップを削除してください。
  group('Search Param test', () {
    test('Check query filter all param ', () async {
      const queryFilter = QueryFilter(
        keyword: 'retrofit',
        inWhere: InWhere.name,
        followers: 10,
        forks: 10,
        stars: 10,
        language: 'java',
      );

      expect(
          queryFilter.combineQueryString(),
          'retrofit+in:name+followers:>=10+forks:>=10+stars:>=10+language:java'
      );
    });

    test('Check query filter few param', () async {
      const queryFilter = QueryFilter(
        keyword: 'retrofit',
        inWhere: InWhere.name,
      );

      expect(
          queryFilter.combineQueryString(),
          'retrofit+in:name'
      );
    });
  });
}
