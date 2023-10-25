import 'package:wheel_of_chores/common/common.dart';
import 'package:wheel_of_chores/data/models/chore.dart';

class ChoresRepository {
  Future<void> create(Chore chore) async {
    final choreDoc = await choresRef.add(chore);

    logger.d(choreDoc);
  }
}
