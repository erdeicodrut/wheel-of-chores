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

AddChoreState _$AddChoreStateFromJson(Map<String, dynamic> json) {
  return _AddChoreState.fromJson(json);
}

/// @nodoc
mixin _$AddChoreState {
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddChoreStateCopyWith<AddChoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddChoreStateCopyWith<$Res> {
  factory $AddChoreStateCopyWith(
          AddChoreState value, $Res Function(AddChoreState) then) =
      _$AddChoreStateCopyWithImpl<$Res, AddChoreState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$AddChoreStateCopyWithImpl<$Res, $Val extends AddChoreState>
    implements $AddChoreStateCopyWith<$Res> {
  _$AddChoreStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AddChoreStateImplCopyWith<$Res>
    implements $AddChoreStateCopyWith<$Res> {
  factory _$$AddChoreStateImplCopyWith(
          _$AddChoreStateImpl value, $Res Function(_$AddChoreStateImpl) then) =
      __$$AddChoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$AddChoreStateImplCopyWithImpl<$Res>
    extends _$AddChoreStateCopyWithImpl<$Res, _$AddChoreStateImpl>
    implements _$$AddChoreStateImplCopyWith<$Res> {
  __$$AddChoreStateImplCopyWithImpl(
      _$AddChoreStateImpl _value, $Res Function(_$AddChoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$AddChoreStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddChoreStateImpl implements _AddChoreState {
  const _$AddChoreStateImpl({this.count = 0});

  factory _$AddChoreStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddChoreStateImplFromJson(json);

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'AddChoreState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddChoreStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddChoreStateImplCopyWith<_$AddChoreStateImpl> get copyWith =>
      __$$AddChoreStateImplCopyWithImpl<_$AddChoreStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddChoreStateImplToJson(
      this,
    );
  }
}

abstract class _AddChoreState implements AddChoreState {
  const factory _AddChoreState({final int count}) = _$AddChoreStateImpl;

  factory _AddChoreState.fromJson(Map<String, dynamic> json) =
      _$AddChoreStateImpl.fromJson;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$AddChoreStateImplCopyWith<_$AddChoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
