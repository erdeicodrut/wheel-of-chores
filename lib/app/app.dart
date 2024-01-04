import 'package:flutter/material.dart';
import 'package:wheel_of_chores/app/router.dart';
import 'package:wheel_of_chores/common/ui/theme.dart';
import 'package:wheel_of_chores/l10n/l10n.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _appRouter.config(),
      theme: theme,
    );
  }
}

