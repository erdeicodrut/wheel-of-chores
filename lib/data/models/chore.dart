import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:wheel_of_chores/data/utils.dart';

part 'chore.g.dart';

@Collection<Chore>('chores')
@firestoreSerializable
class Chore {
  Chore({required this.name, required this.date});

  factory Chore.fromJson(Map<String, Object?> json) => _$ChoreFromJson(json);

  final String name;
  final DateTime date;
}

final choresRef = ChoreCollectionReference();
