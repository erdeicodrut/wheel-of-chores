import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheel_of_chores/app/di.dart';
import 'package:wheel_of_chores/common/ui/button/outlined_button.dart';
import 'package:wheel_of_chores/features/settings/module.dart';
import 'package:wheel_of_chores/features/settings/subpages/members.dart';
import 'package:wheel_of_chores/features/settings/subpages/rooms.dart';
import 'package:wheel_of_chores/generated/assets.dart';
import 'package:wheel_of_chores/l10n/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static const String path = '/settings';
  static const String name = 'settings';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<SettingsCubit>(),
      child: const SettingsView(),
    );
  }
}

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.settings),
        centerTitle: false,
        titleSpacing: 24,
      ),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              foregroundImage: AssetImage(Assets.imagesFlutterLogo),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: OutlineButton(text: context.l10n.account_settings),
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                        ),
                        child: TabBar(
                          splashBorderRadius: BorderRadius.circular(50),
                          unselectedLabelColor:
                              Theme.of(context).primaryColorDark,
                          labelColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Theme.of(context).primaryColorDark,
                          ),
                          padding: EdgeInsets.zero,
                          labelPadding: EdgeInsets.zero,
                          dividerHeight: 0,
                          tabs: [
                            Tab(
                              child: Center(child: Text(context.l10n.rooms)),
                            ),
                            Tab(
                              child: Center(child: Text(context.l10n.members)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          RoomsFragment(),
                          MembersFragment(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsText extends StatelessWidget {
  const SettingsText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((SettingsCubit cubit) => cubit.state).count;
    return Text('$count', style: theme.textTheme.displayLarge);
  }
}
