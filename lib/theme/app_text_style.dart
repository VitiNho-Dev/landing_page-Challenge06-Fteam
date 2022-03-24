import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/theme/app_colors.dart';

class AppTextStyle {
  static final _headline6 = GoogleFonts.ubuntuCondensed(
    color: AppColors.titleColor,
  );

  static final _title = GoogleFonts.ubuntuCondensed(
    color: AppColors.textColor,
    fontSize: 20,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15,
  );

  static final _subtitle1 = GoogleFonts.ubuntuCondensed(
    color: AppColors.titleColor,
  );

  static final _body1 = GoogleFonts.ubuntuCondensed(
    color: AppColors.textColor,
  );

  static final textTheme = TextTheme(
    headline6: _headline6,
    headline5: _title,
    subtitle1: _subtitle1,
    bodyText1: _body1,
  );
}
