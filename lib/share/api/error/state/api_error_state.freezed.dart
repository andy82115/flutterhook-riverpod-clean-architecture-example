// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiErrorState {
  dynamic get errorState => throw _privateConstructorUsedError;
  List<Future<void> Function()> get retryList =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiErrorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiErrorStateCopyWith<ApiErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorStateCopyWith<$Res> {
  factory $ApiErrorStateCopyWith(
          ApiErrorState value, $Res Function(ApiErrorState) then) =
      _$ApiErrorStateCopyWithImpl<$Res, ApiErrorState>;
  @useResult
  $Res call({dynamic errorState, List<Future<void> Function()> retryList});
}

/// @nodoc
class _$ApiErrorStateCopyWithImpl<$Res, $Val extends ApiErrorState>
    implements $ApiErrorStateCopyWith<$Res> {
  _$ApiErrorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiErrorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorState = freezed,
    Object? retryList = null,
  }) {
    return _then(_value.copyWith(
      errorState: freezed == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as dynamic,
      retryList: null == retryList
          ? _value.retryList
          : retryList // ignore: cast_nullable_to_non_nullable
              as List<Future<void> Function()>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiErrorStateImplCopyWith<$Res>
    implements $ApiErrorStateCopyWith<$Res> {
  factory _$$ApiErrorStateImplCopyWith(
          _$ApiErrorStateImpl value, $Res Function(_$ApiErrorStateImpl) then) =
      __$$ApiErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic errorState, List<Future<void> Function()> retryList});
}

/// @nodoc
class __$$ApiErrorStateImplCopyWithImpl<$Res>
    extends _$ApiErrorStateCopyWithImpl<$Res, _$ApiErrorStateImpl>
    implements _$$ApiErrorStateImplCopyWith<$Res> {
  __$$ApiErrorStateImplCopyWithImpl(
      _$ApiErrorStateImpl _value, $Res Function(_$ApiErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiErrorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorState = freezed,
    Object? retryList = null,
  }) {
    return _then(_$ApiErrorStateImpl(
      errorState: freezed == errorState ? _value.errorState! : errorState,
      retryList: null == retryList
          ? _value._retryList
          : retryList // ignore: cast_nullable_to_non_nullable
              as List<Future<void> Function()>,
    ));
  }
}

/// @nodoc

class _$ApiErrorStateImpl implements _ApiErrorState {
  const _$ApiErrorStateImpl(
      {this.errorState = ErrorState.noError,
      final List<Future<void> Function()> retryList = const []})
      : _retryList = retryList;

  @override
  @JsonKey()
  final dynamic errorState;
  final List<Future<void> Function()> _retryList;
  @override
  @JsonKey()
  List<Future<void> Function()> get retryList {
    if (_retryList is EqualUnmodifiableListView) return _retryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_retryList);
  }

  @override
  String toString() {
    return 'ApiErrorState(errorState: $errorState, retryList: $retryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorStateImpl &&
            const DeepCollectionEquality()
                .equals(other.errorState, errorState) &&
            const DeepCollectionEquality()
                .equals(other._retryList, _retryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorState),
      const DeepCollectionEquality().hash(_retryList));

  /// Create a copy of ApiErrorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorStateImplCopyWith<_$ApiErrorStateImpl> get copyWith =>
      __$$ApiErrorStateImplCopyWithImpl<_$ApiErrorStateImpl>(this, _$identity);
}

abstract class _ApiErrorState implements ApiErrorState {
  const factory _ApiErrorState(
      {final dynamic errorState,
      final List<Future<void> Function()> retryList}) = _$ApiErrorStateImpl;

  @override
  dynamic get errorState;
  @override
  List<Future<void> Function()> get retryList;

  /// Create a copy of ApiErrorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiErrorStateImplCopyWith<_$ApiErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
