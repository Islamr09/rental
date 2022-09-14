// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../app_nav_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Профиль',
          style: AppStyles.s20w500,
        ),
        backgroundColor: AppColors.settingsColor,
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      bottomNavigationBar: const AppNavBar(current: 3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                ': ',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
