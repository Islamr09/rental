import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:verstka/ui/bottoms/profile.dart';
import 'package:verstka/ui/bottoms/sms.dart';
import 'package:verstka/ui/products_screen/widgets/products_list_screen.dart';
import 'package:verstka/ui/settings_screen.dart';

import '../constants/app_assets.dart';
import '../constants/app_colors.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    Key? key,
    required this.current,
  }) : super(key: key);

  final int current;

  PageRouteBuilder _createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: current,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.neutral3,
      selectedFontSize: 14.0,
      unselectedFontSize: 14.0,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.account,
            color: current == 0 ? null : AppColors.neutral3,
          ),
          label: 'Главная',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'История',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.account,
            color: current == 0 ? null : AppColors.neutral3,
          ),
          label: 'Сообщения',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.account,
            color: current == 0 ? null : AppColors.neutral3,
          ),
          label: 'Профиль',
        ),
      ],
      onTap: (index) {
        if (index == 0) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const ProductsListScreen()),
            (route) => false,
          );
        } else if (index == 1) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const SettingsScreen()),
            (route) => false,
          );
        } else if (index == 2) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const SmsScreen()),
            (route) => false,
          );
        } else if (index == 3) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const ProfileScreen()),
            (route) => false,
          );
        }
      },
    );
  }
}
