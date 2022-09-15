import 'package:flutter/material.dart';
import 'package:verstka/ui/products_screen/widgets/category.dart';
import 'package:verstka/ui/products_screen/widgets/search_field.dart';
import 'package:verstka/ui/products_screen/widgets/service.dart';
import 'package:verstka/ui/products_screen/widgets/top_avto.dart';

import '../../../constants/app_styles.dart';
import '../../app_nav_bar.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                      children: [
                        const Text(
                          'Привет',
                          style: AppStyles.s16w400,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Дарт Вейдер ',
                              style: AppStyles.s24w400,
                            ),
                            const SizedBox(width: 5),
                            Container(
                              width: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.red, spreadRadius: 2),
                                  ],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 22,
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
              const Service(),
              const SizedBox(height: 20),
              const Text(
                'Категории',
                style: AppStyles.s16w600,
              ),
              const SizedBox(height: 20),
              const CategoryAvto(),
              const Text(
                'Топ авто',
                style: AppStyles.s16w600,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(6, 17, 7, 16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 5,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                      ),
                      child: const Text(
                        'На день',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: const Text(
                      'на неделью',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        width: 5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: const Text(
                      'на месяц',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TopAvto(),
            ],
          ),
        ),
      ),
    );
  }
}
