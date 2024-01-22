// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoresListState _$ChoresListStateFromJson(Map<String, dynamic> json) {
  return _ChoresListState.fromJson(json);
}

/// @nodoc
mixin _$ChoresListState {
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoresListStateCopyWith<ChoresListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoresListStateCopyWith<$Res> {
  factory $ChoresListStateCopyWith(
          ChoresListState value, $Res Function(ChoresListState) then) =
      _$ChoresListStateCopyWithImpl<$Res, ChoresListState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$ChoresListStateCopyWithImpl<$Res, $Val extends ChoresListState>
    implements $ChoresListStateCopyWith<$Res> {
  _$ChoresListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoresListStateImplCopyWith<$Res>
    implements $ChoresListStateCopyWith<$Res> {
  factory _$$ChoresListStateImplCopyWith(_$ChoresListStateImpl value,
          $Res Function(_$ChoresListStateImpl) then) =
      __$$ChoresListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$ChoresListStateImplCopyWithImpl<$Res>
    extends _$ChoresListStateCopyWithImpl<$Res, _$ChoresListStateImpl>
    implements _$$ChoresListStateImplCopyWith<$Res> {
  __$$ChoresListStateImplCopyWithImpl(
      _$ChoresListStateImpl _value, $Res Function(_$ChoresListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$ChoresListStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoresListStateImpl implements _ChoresListState {
  const _$ChoresListStateImpl({this.count = 0});

  factory _$ChoresListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoresListStateImplFromJson(json);

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'ChoresListState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoresListStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoresListStateImplCopyWith<_$ChoresListStateImpl> get copyWith =>
      __$$ChoresListStateImplCopyWithImpl<_$ChoresListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoresListStateImplToJson(
      this,
    );
  }
}

abstract class _ChoresListState implements ChoresListState {
  const factory _ChoresListState({final int count}) = _$ChoresListStateImpl;

  factory _ChoresListState.fromJson(Map<String, dynamic> json) =
      _$ChoresListStateImpl.fromJson;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ChoresListStateImplCopyWith<_$ChoresListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
