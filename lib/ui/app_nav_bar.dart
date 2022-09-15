import 'package:flutter/material.dart';
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
          icon: Image.asset(AppAssets.images.home),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.images.story),
          label: 'История',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(AppAssets.images.sms),
          label: 'Сообщения',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.people),
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
