import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../app_nav_bar.dart';

class SmsScreen extends StatefulWidget {
  const SmsScreen({Key? key}) : super(key: key);

  @override
  State<SmsScreen> createState() => _SmsScreenState();
}

class _SmsScreenState extends State<SmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Сообщения',
          style: AppStyles.s20w500,
        ),
        backgroundColor: AppColors.settingsColor,
        foregroundColor: Colors.white,
        elevation: 0.0,
      ),
      bottomNavigationBar: const AppNavBar(current: 2),
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
