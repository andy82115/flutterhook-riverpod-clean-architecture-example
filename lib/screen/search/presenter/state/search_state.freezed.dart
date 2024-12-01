// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  List<Item> get repositoryList => throw _privateConstructorUsedError;
  SearchRepositoryFetchState get fetchState =>
      throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<Item> repositoryList,
      SearchRepositoryFetchState fetchState,
      int total,
      int currentPage});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryList = null,
    Object? fetchState = null,
    Object? total = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      repositoryList: null == repositoryList
          ? _value.repositoryList
          : repositoryList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      fetchState: null == fetchState
          ? _value.fetchState
          : fetchState // ignore: cast_nullable_to_non_nullable
              as SearchRepositoryFetchState,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Item> repositoryList,
      SearchRepositoryFetchState fetchState,
      int total,
      int currentPage});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryList = null,
    Object? fetchState = null,
    Object? total = null,
    Object? currentPage = null,
  }) {
    return _then(_$SearchStateImpl(
      repositoryList: null == repositoryList
          ? _value._repositoryList
          : repositoryList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      fetchState: null == fetchState
          ? _value.fetchState
          : fetchState // ignore: cast_nullable_to_non_nullable
              as SearchRepositoryFetchState,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {final List<Item> repositoryList = const [],
      this.fetchState = SearchRepositoryFetchState.init,
      this.total = 50,
      this.currentPage = 1})
      : _repositoryList = repositoryList;

  final List<Item> _repositoryList;
  @override
  @JsonKey()
  List<Item> get repositoryList {
    if (_repositoryList is EqualUnmodifiableListView) return _repositoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositoryList);
  }

  @override
  @JsonKey()
  final SearchRepositoryFetchState fetchState;
  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'SearchState(repositoryList: $repositoryList, fetchState: $fetchState, total: $total, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._repositoryList, _repositoryList) &&
            (identical(other.fetchState, fetchState) ||
                other.fetchState == fetchState) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_repositoryList),
      fetchState,
      total,
      currentPage);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final List<Item> repositoryList,
      final SearchRepositoryFetchState fetchState,
      final int total,
      final int currentPage}) = _$SearchStateImpl;

  @override
  List<Item> get repositoryList;
  @override
  SearchRepositoryFetchState get fetchState;
  @override
  int get total;
  @override
  int get currentPage;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
