import 'package:wheel_of_chores/data/models/chore.dart';
import 'package:wheel_of_chores/data/repositories/chores_repo.dart';

class ChoreService {
  ChoreService({required ChoresRepository choresRepository})
      : _choresRepository = choresRepository;

  final ChoresRepository _choresRepository;

  Future<void> createChore(Chore chore) {
    return _choresRepository.create(chore);
  }
}
