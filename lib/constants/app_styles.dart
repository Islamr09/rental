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
  static const s16w400 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(21, 20, 31, 0.5),
  );
  static const textInF = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(130, 130, 130, 1),
  );

  static const s14w400 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.mainText,
  );

  static const s16w500 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.mainText,
  );
  static const s16w500F = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.mainText,
  );
  static const s16w900 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w900,
    color: AppColors.mainText,
  );
  static const s16w9000 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.mainText,
  );
  static const s16w600 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: AppColors.mainText,
  );
  static const s16w700 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: AppColors.mainText,
  );
  static const s16w300 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );
  static const frame8599 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: Colors.grey,
  );
  static const frame8566 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static const textFilter = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: Color.fromRGBO(21, 20, 31, 1),
  );
  static const textPrice = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w800,
    color: Color.fromRGBO(20, 29, 31, 1),
  );
  static const textCityAndCharacter = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(20, 29, 31, 1),
  );

  static const frame8567 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static const s20w500 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    color: AppColors.mainText,
  );
  static const s24w400 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    color: AppColors.mainText,
  );
  static final elevated1 = ElevatedButton.styleFrom(
    primary: const Color(0x000c6f83),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 12.0,
    ),
  );
  static final textButton1 = TextButton.styleFrom(
    backgroundColor: const Color.fromRGBO(12, 111, 131, 1),
  );
  static final textButton2 = TextButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
    primary: const Color.fromARGB(255, 0, 0, 0), //fontSize: 20,
    textStyle: AppStyles.s14w400,
  );
  static final text3 = TextButton.styleFrom(
    primary: AppColors.more1,
    textStyle: AppStyles.s14w400,
  );
}
