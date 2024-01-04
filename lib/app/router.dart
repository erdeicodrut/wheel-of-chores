import 'package:auto_route/auto_route.dart';
import 'package:wheel_of_chores/features/counter/module.dart';
import 'package:wheel_of_chores/features/home_page/module.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();



  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CounterRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
      ];
}
