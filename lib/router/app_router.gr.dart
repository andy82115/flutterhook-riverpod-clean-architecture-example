// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter_hook_riverpod_clean_architecture/screen/detail/presenter/detail_screen.dart'
    as _i1;
import 'package:flutter_hook_riverpod_clean_architecture/screen/error/error_screen.dart'
    as _i2;
import 'package:flutter_hook_riverpod_clean_architecture/screen/search/presenter/search_screen.dart'
    as _i3;

/// generated route for
/// [_i1.DetailScreen]
class DetailRoute extends _i4.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    required String owner,
    required String repo,
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            owner: owner,
            repo: repo,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailRouteArgs>();
      return _i1.DetailScreen(
        owner: args.owner,
        repo: args.repo,
        key: args.key,
      );
    },
  );
}

class DetailRouteArgs {
  const DetailRouteArgs({
    required this.owner,
    required this.repo,
    this.key,
  });

  final String owner;

  final String repo;

  final _i5.Key? key;

  @override
  String toString() {
    return 'DetailRouteArgs{owner: $owner, repo: $repo, key: $key}';
  }
}

/// generated route for
/// [_i2.ErrorScreen]
class ErrorRoute extends _i4.PageRouteInfo<void> {
  const ErrorRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ErrorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ErrorRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.ErrorScreen();
    },
  );
}

/// generated route for
/// [_i3.SearchScreen]
class SearchRoute extends _i4.PageRouteInfo<void> {
  const SearchRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SearchScreen();
    },
  );
}
