import 'package:wheel_of_chores/app/di.dart';
import 'package:wheel_of_chores/features/counter/module.dart';
import 'package:wheel_of_chores/features/home_page/cubit.dart';
import 'package:wheel_of_chores/services/chore_service.dart';

void registerFeatures() {
  getIt.registerFactory(
    () => CounterCubit(
      choreService: getIt.get<ChoreService>(),
    ),
  );

  getIt.registerFactory(
    HomeCubit.new,
  );
}
