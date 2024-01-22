import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheel_of_chores/app/di.dart';
import 'package:wheel_of_chores/features/add_chore/module.dart';
import 'package:wheel_of_chores/generated/assets.dart';
import 'package:wheel_of_chores/l10n/l10n.dart';

class AddChorePage extends StatelessWidget {
  const AddChorePage({super.key});
  static const String path = 'add_chore';
  static const String name = 'add_chore';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<AddChoreCubit>(),
      child: const AddChoreView(),
    );
  }
}

class AddChoreView extends StatelessWidget {
  const AddChoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.add_chore)),
      body: Center(
        child: Column(
          children: [
            Image.asset(Assets.imagesFlutterLogo),
            const AddChoreText(),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<AddChoreCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => context.read<AddChoreCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

class AddChoreText extends StatelessWidget {
  const AddChoreText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((AddChoreCubit cubit) => cubit.state).count;
    return Text('$count', style: theme.textTheme.displayLarge);
  }
}
