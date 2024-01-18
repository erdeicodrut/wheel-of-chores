import 'package:wheel_of_chores/app/di.dart';
import 'package:wheel_of_chores/features/add_chore/module.dart';
import 'package:wheel_of_chores/features/chores_list/module.dart';
import 'package:wheel_of_chores/features/counter/module.dart';
import 'package:wheel_of_chores/features/home_page/module.dart';
import 'package:wheel_of_chores/features/settings/module.dart';
import 'package:wheel_of_chores/services/chore_service.dart';

void registerFeatures() {
  getIt
    ..registerFactory(
      () => CounterCubit(
        choreService: getIt.get<ChoreService>(),
      ),
    )
    ..registerFactory(
      HomeCubit.new,
    )
    ..registerFactory(
      () => ChoresListCubit(
        choreService: getIt.get<ChoreService>(),
      ),
    )
    ..registerFactory(
      () => SettingsCubit(
        choreService: getIt.get<ChoreService>(),
      ),
    )
    ..registerFactory(
      () => AddChoreCubit(
        choreService: getIt.get<ChoreService>(),
      ),
    );
}
