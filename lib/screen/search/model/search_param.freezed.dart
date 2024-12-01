// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchParam {
  QueryFilter get queryFilter => throw _privateConstructorUsedError;
  SearchSort get sort => throw _privateConstructorUsedError;
  SearchOrder get order => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Create a copy of SearchParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchParamCopyWith<SearchParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParamCopyWith<$Res> {
  factory $SearchParamCopyWith(
          SearchParam value, $Res Function(SearchParam) then) =
      _$SearchParamCopyWithImpl<$Res, SearchParam>;
  @useResult
  $Res call(
      {QueryFilter queryFilter,
      SearchSort sort,
      SearchOrder order,
      int perPage,
      int page});

  $QueryFilterCopyWith<$Res> get queryFilter;
}

/// @nodoc
class _$SearchParamCopyWithImpl<$Res, $Val extends SearchParam>
    implements $SearchParamCopyWith<$Res> {
  _$SearchParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryFilter = null,
    Object? sort = null,
    Object? order = null,
    Object? perPage = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      queryFilter: null == queryFilter
          ? _value.queryFilter
          : queryFilter // ignore: cast_nullable_to_non_nullable
              as QueryFilter,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SearchSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SearchOrder,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of SearchParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QueryFilterCopyWith<$Res> get queryFilter {
    return $QueryFilterCopyWith<$Res>(_value.queryFilter, (value) {
      return _then(_value.copyWith(queryFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchParamImplCopyWith<$Res>
    implements $SearchParamCopyWith<$Res> {
  factory _$$SearchParamImplCopyWith(
          _$SearchParamImpl value, $Res Function(_$SearchParamImpl) then) =
      __$$SearchParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QueryFilter queryFilter,
      SearchSort sort,
      SearchOrder order,
      int perPage,
      int page});

  @override
  $QueryFilterCopyWith<$Res> get queryFilter;
}

/// @nodoc
class __$$SearchParamImplCopyWithImpl<$Res>
    extends _$SearchParamCopyWithImpl<$Res, _$SearchParamImpl>
    implements _$$SearchParamImplCopyWith<$Res> {
  __$$SearchParamImplCopyWithImpl(
      _$SearchParamImpl _value, $Res Function(_$SearchParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryFilter = null,
    Object? sort = null,
    Object? order = null,
    Object? perPage = null,
    Object? page = null,
  }) {
    return _then(_$SearchParamImpl(
      queryFilter: null == queryFilter
          ? _value.queryFilter
          : queryFilter // ignore: cast_nullable_to_non_nullable
              as QueryFilter,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as SearchSort,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SearchOrder,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchParamImpl with DiagnosticableTreeMixin implements _SearchParam {
  const _$SearchParamImpl(
      {this.queryFilter = const QueryFilter(),
      this.sort = SearchSort.updated,
      this.order = SearchOrder.asc,
      this.perPage = 15,
      this.page = 1});

  @override
  @JsonKey()
  final QueryFilter queryFilter;
  @override
  @JsonKey()
  final SearchSort sort;
  @override
  @JsonKey()
  final SearchOrder order;
  @override
  @JsonKey()
  final int perPage;
  @override
  @JsonKey()
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchParam(queryFilter: $queryFilter, sort: $sort, order: $order, perPage: $perPage, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchParam'))
      ..add(DiagnosticsProperty('queryFilter', queryFilter))
      ..add(DiagnosticsProperty('sort', sort))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('perPage', perPage))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchParamImpl &&
            (identical(other.queryFilter, queryFilter) ||
                other.queryFilter == queryFilter) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, queryFilter, sort, order, perPage, page);

  /// Create a copy of SearchParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchParamImplCopyWith<_$SearchParamImpl> get copyWith =>
      __$$SearchParamImplCopyWithImpl<_$SearchParamImpl>(this, _$identity);
}

abstract class _SearchParam implements SearchParam {
  const factory _SearchParam(
      {final QueryFilter queryFilter,
      final SearchSort sort,
      final SearchOrder order,
      final int perPage,
      final int page}) = _$SearchParamImpl;

  @override
  QueryFilter get queryFilter;
  @override
  SearchSort get sort;
  @override
  SearchOrder get order;
  @override
  int get perPage;
  @override
  int get page;

  /// Create a copy of SearchParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchParamImplCopyWith<_$SearchParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QueryFilter {
  String get keyword => throw _privateConstructorUsedError;
  InWhere get inWhere => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;
  int get forks => throw _privateConstructorUsedError;
  int get stars => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  /// Create a copy of QueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueryFilterCopyWith<QueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryFilterCopyWith<$Res> {
  factory $QueryFilterCopyWith(
          QueryFilter value, $Res Function(QueryFilter) then) =
      _$QueryFilterCopyWithImpl<$Res, QueryFilter>;
  @useResult
  $Res call(
      {String keyword,
      InWhere inWhere,
      int followers,
      int forks,
      int stars,
      String language});
}

/// @nodoc
class _$QueryFilterCopyWithImpl<$Res, $Val extends QueryFilter>
    implements $QueryFilterCopyWith<$Res> {
  _$QueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? inWhere = null,
    Object? followers = null,
    Object? forks = null,
    Object? stars = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      inWhere: null == inWhere
          ? _value.inWhere
          : inWhere // ignore: cast_nullable_to_non_nullable
              as InWhere,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryFilterImplCopyWith<$Res>
    implements $QueryFilterCopyWith<$Res> {
  factory _$$QueryFilterImplCopyWith(
          _$QueryFilterImpl value, $Res Function(_$QueryFilterImpl) then) =
      __$$QueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String keyword,
      InWhere inWhere,
      int followers,
      int forks,
      int stars,
      String language});
}

/// @nodoc
class __$$QueryFilterImplCopyWithImpl<$Res>
    extends _$QueryFilterCopyWithImpl<$Res, _$QueryFilterImpl>
    implements _$$QueryFilterImplCopyWith<$Res> {
  __$$QueryFilterImplCopyWithImpl(
      _$QueryFilterImpl _value, $Res Function(_$QueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? inWhere = null,
    Object? followers = null,
    Object? forks = null,
    Object? stars = null,
    Object? language = null,
  }) {
    return _then(_$QueryFilterImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      inWhere: null == inWhere
          ? _value.inWhere
          : inWhere // ignore: cast_nullable_to_non_nullable
              as InWhere,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueryFilterImpl with DiagnosticableTreeMixin implements _QueryFilter {
  const _$QueryFilterImpl(
      {this.keyword = '',
      this.inWhere = InWhere.all,
      this.followers = 0,
      this.forks = 0,
      this.stars = 0,
      this.language = ''});

  @override
  @JsonKey()
  final String keyword;
  @override
  @JsonKey()
  final InWhere inWhere;
  @override
  @JsonKey()
  final int followers;
  @override
  @JsonKey()
  final int forks;
  @override
  @JsonKey()
  final int stars;
  @override
  @JsonKey()
  final String language;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QueryFilter(keyword: $keyword, inWhere: $inWhere, followers: $followers, forks: $forks, stars: $stars, language: $language)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QueryFilter'))
      ..add(DiagnosticsProperty('keyword', keyword))
      ..add(DiagnosticsProperty('inWhere', inWhere))
      ..add(DiagnosticsProperty('followers', followers))
      ..add(DiagnosticsProperty('forks', forks))
      ..add(DiagnosticsProperty('stars', stars))
      ..add(DiagnosticsProperty('language', language));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryFilterImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.inWhere, inWhere) || other.inWhere == inWhere) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, keyword, inWhere, followers, forks, stars, language);

  /// Create a copy of QueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryFilterImplCopyWith<_$QueryFilterImpl> get copyWith =>
      __$$QueryFilterImplCopyWithImpl<_$QueryFilterImpl>(this, _$identity);
}

abstract class _QueryFilter implements QueryFilter {
  const factory _QueryFilter(
      {final String keyword,
      final InWhere inWhere,
      final int followers,
      final int forks,
      final int stars,
      final String language}) = _$QueryFilterImpl;

  @override
  String get keyword;
  @override
  InWhere get inWhere;
  @override
  int get followers;
  @override
  int get forks;
  @override
  int get stars;
  @override
  String get language;

  /// Create a copy of QueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueryFilterImplCopyWith<_$QueryFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
