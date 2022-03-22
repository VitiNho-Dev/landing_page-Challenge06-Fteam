import 'package:flutter/material.dart';
import 'package:landing_page/theme/app_text_style.dart';

import 'home_module/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: AppTextStyle.textTheme,
      ),
      home: const HomePage(),
    );
  }
}
