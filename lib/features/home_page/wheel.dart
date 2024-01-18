import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:wheel_of_chores/l10n/l10n.dart';

class Wheel extends StatefulWidget {
  const Wheel({
    required this.selection,
    super.key,
  });

  final List<String> selection;

  @override
  State<Wheel> createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  final selected = StreamController<int>.broadcast();
  bool isAnimating = false;

  void handleRoll() {
    selected.add(Random().nextInt(widget.selection.length));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10000000000)),
            color: Theme.of(context).disabledColor,
          ),
          padding: const EdgeInsets.all(30),
          child: Stack(
            children: [
              FortuneWheel(
                animateFirst: false,
                alignment: Alignment.center,
                selected: selected.stream,
                onAnimationStart: () => setState(() => isAnimating = true),
                onAnimationEnd: () => setState(() => isAnimating = false),
                onFling: handleRoll,
                hapticImpact: HapticImpact.heavy,
                indicators: const [
                  FortuneIndicator(
                    child: TriangleIndicator(),
                    alignment: Alignment.centerRight,
                  ),
                ],
                items: [
                  for (final it in widget.selection)
                    FortuneItem(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50, right: 10),
                        child: Text(it.substring(0, min(it.length, 20))),
                      ),
                      // onTap: () => print(it),
                      style: FortuneItemStyle(
                        textAlign: TextAlign.end,
                        textStyle: Theme.of(context).textTheme.bodyMedium!,
                        borderColor: Theme.of(context).shadowColor,
                      ),
                    ),
                ],
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(10000000000)),
                    color: Theme.of(context).disabledColor,
                    border: Border.all(color: Theme.of(context).disabledColor),
                  ),
                  child: InkWell(
                    onTap: isAnimating ? () {} : handleRoll,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        color: Theme.of(context).primaryColor,
                      ),
                      width: 75,
                      height: 75,
                      alignment: Alignment.center,
                      child: Text(
                        context.l10n.spin,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
