import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
    this.onSaved,
  }) : super(key: key);

  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.s16w400.copyWith(
        color: AppColors.mainText,
      ),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'Телефон',
        hintStyle: AppStyles.s16w400.copyWith(
          color: AppColors.neutral2,
        ),
        prefixIcon: const Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Icon(Icons.phone),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        filled: true,
        fillColor: AppColors.neutral1,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        counterText: '',
      ),
      maxLength: 8,
      validator: (value) {
        if (value == null) return 'Проверить телефон или пароль';

        return null;
      },
      onSaved: onSaved,
    );
  }
}
