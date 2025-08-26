import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class CustomTextStyles {
  static final pacifico400Style64 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 64,
    color: AppColors.secondary,
    fontFamily: "Pacifico",
  );
  static final Poppins500Style24 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: Colors.black,
    fontFamily: "Poppins",
  );
  static final Poppins300Style16 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: Colors.black,
    fontFamily: "Poppins",
  );
}
