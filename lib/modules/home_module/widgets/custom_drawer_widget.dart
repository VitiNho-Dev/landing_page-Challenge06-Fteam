import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/widgets/custom_header_widget.dart';
import 'package:landing_page/theme/app_colors.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(30),
      color: AppColors.primaryColor,
      child: const CustomHeaderWidget(),
    );
  }
}
