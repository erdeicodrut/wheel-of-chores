import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
class AddChoreState with _$AddChoreState {
  const factory AddChoreState({
    @Default(0) int count,
  }) = _AddChoreState;

  factory AddChoreState.fromJson(Map<String, dynamic> json) =>
      _$AddChoreStateFromJson(json);
}
