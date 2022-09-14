// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_styles.dart';
import 'app_nav_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'История',
          style: AppStyles.s20w500,
        ),
        backgroundColor: AppColors.settingsColor,
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      bottomNavigationBar: const AppNavBar(current: 1),
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
