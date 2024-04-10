import 'package:flutter/material.dart';
import 'package:web_app/core/theming/styles.dart';

class HearderMenu extends StatelessWidget {
  const HearderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        menuItems("Home"),
        menuItems("Favourite"),
        menuItems("About"),
        menuItems("Review"),
        menuItems("Them"),
      ],
    );
  }

  Padding menuItems(name) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        onTap: () {},
        child: Text(
          name,
          style: TextStyles.font16Meduim,
        ),
      ),
    );
  }
}
