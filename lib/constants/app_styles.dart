import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyles {
  static const s10w500 = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w500,
    color: AppColors.mainText,
  );

  static const s12w400 = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.mainText,
  );

  static const s14w400 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.mainText,
  );

  static const s16w400 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: AppColors.mainText,
  );

  static const s16w500 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.mainText,
  );
  static const s16w600 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: AppColors.mainText,
  );
  static const s16w300 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  static const s20w500 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    color: AppColors.mainText,
  );

  static final elevated1 = ElevatedButton.styleFrom(
    primary: Color.fromRGBO(12, 111, 131, 0),
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 12.0,
    ),
  );

  static final outlined1 = OutlinedButton.styleFrom(
    textStyle: AppStyles.s16w400.copyWith(
      color: AppColors.primary,
    ),
    side: const BorderSide(
      color: AppColors.primary,
      width: 1.0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 10.0,
    ),
  );

  static final text1 = TextButton.styleFrom(
    primary: Color.fromARGB(255, 0, 0, 0), //fontSize: 20,
    textStyle: AppStyles.s14w400,
  );
  static final text3 = TextButton.styleFrom(
    primary: AppColors.more1,
    textStyle: AppStyles.s14w400,
  );
}
