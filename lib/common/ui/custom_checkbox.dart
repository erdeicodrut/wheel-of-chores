import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheel_of_chores/generated/assets.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.checkboxChecked,
      width: 24,
      color: Theme.of(context).shadowColor,
    );
  }
}
