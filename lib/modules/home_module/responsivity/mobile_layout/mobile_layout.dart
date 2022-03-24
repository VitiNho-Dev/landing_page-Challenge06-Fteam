import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/widgets/custom_header_widget.dart';
import 'package:landing_page/theme/app_colors.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 7, 96, 134),
        child: Padding(
          padding: EdgeInsets.all(50),
          child: CustomHeaderWidget(),
        ),
      ),
    );
  }
}
