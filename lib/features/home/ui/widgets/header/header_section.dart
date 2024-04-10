import 'package:flutter/material.dart';
import 'package:web_app/core/helper/responsive.dart';
import 'package:web_app/features/home/ui/widgets/header/header_contain.dart';
import 'package:web_app/features/home/ui/widgets/header/header_icon_and_name.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blue[200],
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 1233),
            child:  Column(
              children: [
                const HeaderIconAndName(),
                Responsive.isDesktop(context)? const Headercontain() : const MobileHeaderContain(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
