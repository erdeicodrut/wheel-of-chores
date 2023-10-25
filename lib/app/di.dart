import 'package:get_it/get_it.dart';
import 'package:wheel_of_chores/data/di.dart';
import 'package:wheel_of_chores/features/di.dart';
import 'package:wheel_of_chores/services/di.dart';

final getIt = GetIt.instance;

abstract class DI {
  static void register() {
    registerDataLayer();
    registerServices();
    registerFeatures();
  }
}
