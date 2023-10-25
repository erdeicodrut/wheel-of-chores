import 'package:wheel_of_chores/app/di.dart';
import 'package:wheel_of_chores/data/repositories/chores_repo.dart';
import 'package:wheel_of_chores/services/chore_service.dart';

void registerServices() {
  getIt.registerFactory(
    () => ChoreService(
      choresRepository: getIt.get<ChoresRepository>(),
    ),
  );
}
