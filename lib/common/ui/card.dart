import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheel_of_chores/common/ui/custom_checkbox.dart';
import 'package:wheel_of_chores/generated/assets.dart';

class ChoreCard extends StatelessWidget {
  const ChoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).shadowColor,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: const Text('Chore title'),
          subtitle: Row(
            children: [
              SvgPicture.asset(
                Assets.iconsAlarmclock,
                width: 14,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 4),
              const Text('28-11-2023'),
              const Spacer(),
              SvgPicture.asset(
                Assets.iconsUser,
                width: 14,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 4),
              const CircleAvatar(
                foregroundImage: AssetImage(Assets.imagesFlutterLogo),
                maxRadius: 10,
              ),
              const Spacer(flex: 5),
            ],
          ),
          leading: Icon(
            Icons.ad_units_rounded,
            color: Theme.of(context).primaryColorDark,
            size: 32,
          ),
          trailing: const CustomCheckbox(),
        ),
      ),
    );
  }
}
