import 'package:flutter/material.dart';
import 'package:landing_page/modules/home_module/widgets/custom_header_widget.dart';
import 'package:landing_page/theme/app_colors.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({
    Key? key,
    required this.heightSize,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double heightSize;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.primaryColor,
      child: CustomHeaderWidget(
        height: height,
        width: width,
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, heightSize);
}
