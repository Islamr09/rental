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
                          image:
                              AssetImage('lib/assets/images/bitmap/camry.jpg')),
                      const Text(
                        'Toyota Camry',
                        style: AppStyles.s16w600,
                      ),
                      Row(
                        children: const [
                          Text(
                            '20000тг',
                            style: AppStyles.s16w600,
                          ),
                          Text(
                            ' в сутки',
                            style: AppStyles.s16w300,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Row(
                                children: [
                                  Image.asset(AppAssets.images.engine),
                                  const Text('3,5'),
                                ],
                              )),
                          Container(
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Row(
                                children: [
                                  Image.asset(AppAssets.images.cardoor),
                                  const Text('4'),
                                ],
                              )),
                          Container(
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Row(
                                children: const [
                                  Icon(Icons.people),
                                  Text('5'),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
