import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wheel_of_chores/app/di.dart';
import 'package:wheel_of_chores/common/ui/button/plus_button.dart';
import 'package:wheel_of_chores/common/ui/card.dart';
import 'package:wheel_of_chores/common/ui/dropdown.dart';
import 'package:wheel_of_chores/features/add_chore/page.dart';
import 'package:wheel_of_chores/features/chores_list/module.dart';
import 'package:wheel_of_chores/l10n/l10n.dart';

class ChoresListPage extends StatelessWidget {
  const ChoresListPage({super.key});
  static const String path = '/chores_list';
  static const String name = 'chores_list';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<ChoresListCubit>(),
      child: const ChoresListView(),
    );
  }
}

class ChoresListView extends StatelessWidget {
  const ChoresListView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.todo_list),
        centerTitle: false,
        titleSpacing: 24,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 24),
            PlusButton(
              text: context.l10n.new_chore,
              onTap: () {
                context.goNamed(AddChorePage.name);
              },
            ),
            const SizedBox(height: 24),
            const Dropdown(),
            const SizedBox(height: 24),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: const [
                  ChoreCard(),
                  ChoreCard(),
                  ChoreCard(),
                  ChoreCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChoresListText extends StatelessWidget {
  const ChoresListText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((ChoresListCubit cubit) => cubit.state).count;
    return Text('$count', style: theme.textTheme.displayLarge);
  }
}
