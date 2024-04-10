import 'package:flutter/material.dart';
import 'package:web_app/features/home/ui/widgets/Body/body_section.dart';
import 'package:web_app/features/home/ui/widgets/Footer/footer_section.dart';
import 'package:web_app/features/home/ui/widgets/header/header_section.dart';
import 'package:web_app/features/home/ui/widgets/my_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: MyDrawer(),
      drawerEnableOpenDragGesture: true,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            HeaderSection(),
            BodySection(),
            FooterSection(),
            
          ],
        )),
      ),
    );
  }
}
