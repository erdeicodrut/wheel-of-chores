import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ad_units_rounded,
                color: Theme.of(context).primaryColorLight,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ad_units_rounded,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ad_units_rounded,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
