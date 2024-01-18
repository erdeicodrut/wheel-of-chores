import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
class ChoresListState with _$ChoresListState {
  const factory ChoresListState({
    @Default(0) int count,
  }) = _ChoresListState;

  factory ChoresListState.fromJson(Map<String, dynamic> json) =>
      _$ChoresListStateFromJson(json);
}
