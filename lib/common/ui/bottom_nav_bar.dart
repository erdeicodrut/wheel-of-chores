import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheel_of_chores/generated/assets.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required this.setActiveIndex,
    required this.activeIndex,
    super.key,
  });

  final void Function(int) setActiveIndex;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10000000000)),
          color: Theme.of(context).primaryColorDark,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Set<String>>[
            {Assets.iconsHome, Assets.iconsHomeFilled},
            {Assets.iconsNotebook, Assets.iconsNotebookFilled},
            {Assets.iconsSettings, Assets.iconsSettingsFilled},
          ]
              .mapIndexed(
                (index, p1) => IconButton(
                  onPressed: () => setActiveIndex(index),
                  icon: SvgPicture.asset(
                    activeIndex == index ? p1.last : p1.first,
                    width: 24,
                    colorFilter: ColorFilter.mode(
                      activeIndex == index
                          ? Theme.of(context).primaryColorLight
                          : Theme.of(context).scaffoldBackgroundColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
