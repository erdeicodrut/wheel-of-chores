import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wheel_of_chores/common/ui/bottom_nav_bar.dart';
import 'package:wheel_of_chores/features/add_chore/module.dart';
import 'package:wheel_of_chores/features/chores_list/module.dart';
import 'package:wheel_of_chores/features/home_page/module.dart';
import 'package:wheel_of_chores/features/settings/module.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'shellC');

final goRouter = GoRouter(
  initialLocation: '/wheel',
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAKey,
          routes: [
            GoRoute(
              path: '/wheel',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: HomePage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorBKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/chores_list',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: ChoresListPage(),
              ),
              routes: [
                GoRoute(
                  path: 'add_chore',
                  builder: (context, state) => const AddChorePage(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorCKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/settings',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: SettingsPage(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

//
// class AppRouter extends _$AppRouter {
//   @override
//   RouteType get defaultRouteType => const RouteType.material();
//
//   @override
//   List<AutoRoute> get routes => [
//         AutoRoute(
//           page: MainTabRoute.page,
//           path: '/',
//           children: [
//             AutoRoute(
//               path: 'wheel',
//               page: HomeRoute.page,
//             ),
//             AutoRoute(
//               path: 'chores_list',
//               page: ChoresListRoute.page,
//               children: [
//                 AutoRoute(
//                   path: 'add_chore',
//                   page: AddChoreRoute.page,
//                 ),
//               ],
//             ),
//             AutoRoute(
//               path: 'settings',
//               page: SettingsRoute.page,
//               children: [
//                 AutoRoute(
//                   path: 'add_chore',
//                   page: AddChoreRoute.page,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ];
// }

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({required this.navigationShell, Key? key})
      : super(
          key: key ?? const ValueKey<String>('ScaffoldWithNestedNavigation'),
        );
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ScaffoldWithNavigationBar(
        body: navigationShell,
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
      ),
    );
  }
}

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
    super.key,
  });

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: BottomNavBar(
        activeIndex: selectedIndex,
        setActiveIndex: onDestinationSelected,
      ),
    );
  }
}
