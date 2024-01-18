import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheel_of_chores/generated/assets.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({required this.text, this.onTap, super.key});

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: onTap ?? () => print('Pressed $text button'),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(100),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Assets.elementsPlus,
                width: 24,
                color: Colors.white,
              ),
              const SizedBox(width: 16),
              Text(
                text,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
