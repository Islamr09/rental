import 'package:flutter/material.dart';
import 'package:verstka/constants/app_assets.dart';
import 'package:verstka/constants/app_styles.dart';

class TopAvto extends StatelessWidget {
  const TopAvto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                          image: AssetImage('lib/assets/images/bitmap/f5.png')),
                      const Padding(
                        padding: EdgeInsets.only(top: 8, left: 8),
                        child: Text(
                          'Toyota Camry',
                          style: AppStyles.s16w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 8),
                        child: Row(
                          children: [
                            const Text(
                              '20 000тг',
                              style: AppStyles.s16w9000,
                            ),
                            Text(
                              ' в сутки',
                              style: AppStyles.s16w500
                                  .copyWith(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 8),
                        child: Row(
                          children: [
                            Container(
                                width: 70,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(AppAssets.images.engine),
                                    const SizedBox(width: 5),
                                    const Text(
                                      '3.5',
                                      style: AppStyles.s16w9000,
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                                width: 70,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(AppAssets.images.cardoor),
                                    const SizedBox(width: 5),
                                    const Text(
                                      '4',
                                      style: AppStyles.s16w9000,
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                                width: 70,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.people),
                                    SizedBox(width: 5),
                                    Text(
                                      '5',
                                      style: AppStyles.s16w9000,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
