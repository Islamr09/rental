import 'package:flutter/material.dart';
import 'package:verstka/ui/products_screen/widgets/category.dart';
import 'package:verstka/ui/products_screen/widgets/search_field.dart';
import 'package:verstka/ui/products_screen/widgets/top_avto.dart';

import '../../../constants/app_styles.dart';
import '../../app_nav_bar.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const AppNavBar(current: 0),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Алматы ',
                  style: AppStyles.s16w500,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white10,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Привет',
                          style: AppStyles.s12w400,
                        ),
                        Text(
                          'Дарт Вейдер',
                          style: AppStyles.s20w500,
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          AssetImage('lib/assets/images/bitmap/user.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SearchField(),
              const SizedBox(height: 20),
              const Text(
                'Категории',
                style: AppStyles.s16w600,
              ),
              const CategoryAvto(),
              const Text(
                'Топ авто',
                style: AppStyles.s16w600,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: Text(
                        'На день',
                        style: TextStyle(color: Colors.white),
                      )),
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.green,
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () {},
                      child: Text(
                        'На неделью',
                        style: TextStyle(color: Colors.white),
                      )),
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.grey,
                      ),
                      onPressed: () {},
                      child: Text(
                        'На месяц',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              const TopAvto(),
            ],
          ),
        ),
      ),
    );
  }
}
