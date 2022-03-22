import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/responsivity/mobile_layout.dart';
import 'package:landing_page/modules/home_module/responsivity/web_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > constraints.maxHeight) {
          return const WebLayout();
        } else {
          return const MobileLayout();
        }
      },
    );
  }
}
