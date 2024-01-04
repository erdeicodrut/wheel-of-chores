import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheel_of_chores/app/di.dart';
import 'package:wheel_of_chores/common/ui/bottom_nav_bar.dart';
import 'package:wheel_of_chores/features/home_page/cubit.dart';
import 'package:wheel_of_chores/features/home_page/wheel.dart';
import 'package:wheel_of_chores/l10n/l10n.dart';
import 'package:wheel_of_chores/r.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<HomeCubit>(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                child: Image.asset(R.images.flutter_logo),
              ),
              Text(
                l10n.hello('Codrut'),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                l10n.spin_the_wheel,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Wheel(
                selection: [
                  '123456789123456789=/',
                  '123456789123456789=/',
                  '123456789123456789=/',
                  'this is a sample text that represents a text',
                  'this is a sample text that represents a text',
                  'this is a sample text that represents a text',
                  '123456789123456789=/',
                  'this is a sample text that represents a text',
                  'this is a sample text that represents a text',
                  '123456789123456789=/',
                  '123456789123456789=/',
                  'this is a sample text that represents a text',
                  '123456789123456789=/',
                  'this is a sample text that represents a text',
                  '123456789123456789=/',
                  'this is a sample text that represents a text',
                  'this is a sample text that represents a text',
                  '123456789123456789=/',
                  'this is a sample text that represents a text',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
