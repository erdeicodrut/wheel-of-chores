import 'package:wheel_of_chores/app/di.dart';
import 'package:wheel_of_chores/data/repositories/chores_repo.dart';

void registerDataLayer() {
  getIt.registerFactory(ChoresRepository.new);
}
