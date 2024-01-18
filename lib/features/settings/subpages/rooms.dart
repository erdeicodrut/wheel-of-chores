import 'package:flutter/material.dart';
import 'package:wheel_of_chores/common/ui/button/plus_button.dart';
import 'package:wheel_of_chores/common/ui/room_card.dart';
import 'package:wheel_of_chores/l10n/l10n.dart';

class RoomsFragment extends StatelessWidget {
  const RoomsFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Center(child: PlusButton(text: context.l10n.add_room)),
        ),
        const RoomCard(),
        const RoomCard(),
        const RoomCard(),
        const RoomCard(),
      ],
    );
  }
}
