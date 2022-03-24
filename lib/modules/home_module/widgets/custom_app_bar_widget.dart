import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/widgets/custom_header_widget.dart';
import 'package:landing_page/theme/app_colors.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(30),
      color: AppColors.primaryColor,
      child: const CustomHeaderWidget(),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 150);
}
