import 'package:flutter/material.dart';
import 'package:web_app/core/helper/responsive.dart';
import 'package:web_app/core/theming/styles.dart';
import 'package:web_app/features/home/ui/widgets/header/header_menu.dart';

class HeaderIconAndName extends StatelessWidget {
  const HeaderIconAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
        IconButton(onPressed: () {
          Scaffold.of(context).openDrawer();
        }, icon: const Icon(Icons.menu)),
        Image.asset(
          "assets/images/logo.png",
          height: 150,
          width: 150,
        ),
        Text(
          "PizzaHub",
          style: TextStyles.font15bolddeeppurple,
        ),
        const Spacer(),
        if(Responsive.isDesktop(context))
          const HearderMenu(),
      const Spacer(),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            elevation: 17,
            minimumSize: const Size(25, 44),
          ),
            onPressed: () {},
            child: Text(
              "Join",
              style: TextStyles.font15bolddeeppurple
                  .copyWith( color: Colors.white),
            ))
      ],
    );
  }
}
