import 'package:auto_route/auto_route.dart';
import 'package:wheel_of_chores/features/counter/counter.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CounterRoute.page,
          initial: true,
        ),
      ];
}
