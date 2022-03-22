import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/theme/app_colors.dart';

class AppTextStyle {
  static final _headline6 = GoogleFonts.ubuntuCondensed(
    color: AppColors.titleColor,
  );

  static final _subtitle1 = GoogleFonts.ubuntuCondensed(
    color: AppColors.titleColor,
  );

  static final textTheme = TextTheme(
    headline6: _headline6,
    subtitle1: _subtitle1,
  );
}
