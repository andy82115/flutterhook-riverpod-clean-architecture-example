// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_hook_riverpod_clean_architecture/screen/detail/presenter/detail_screen.dart'
    as _i1;
import 'package:flutter_hook_riverpod_clean_architecture/screen/search/presenter/search_screen.dart'
    as _i2;

/// generated route for
/// [_i1.DetailScreen]
class DetailRoute extends _i3.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    required String owner,
    required String repo,
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
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

  static _i3.PageInfo page = _i3.PageInfo(
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

  final _i4.Key? key;

  @override
  String toString() {
    return 'DetailRouteArgs{owner: $owner, repo: $repo, key: $key}';
  }
}

/// generated route for
/// [_i2.SearchScreen]
class SearchRoute extends _i3.PageRouteInfo<void> {
  const SearchRoute({List<_i3.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.SearchScreen();
    },
  );
}
