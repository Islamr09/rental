import 'package:flutter/material.dart';

class CategoryAvto extends StatelessWidget {
  const CategoryAvto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 106,
                  width: 246,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/bitmap/f4.png'),
                    ),
                  ),
                  child: const Center(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.0, left: 8),
                        child: Text(
                          'Эконом',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    right: 40.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 206, 81, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(255, 206, 81, 1),
                          width: 5,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Text('от 10000тг'),
                    ))
              ],
            ),
            const SizedBox(width: 2),
            Stack(
              children: [
                Container(
                  height: 106,
                  width: 246,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/bitmap/f4.png'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: const Center(
                      child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0, left: 8),
                      child: Text(
                        'Комфорт',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
                ),
                Positioned(
                    bottom: 10,
                    right: 40.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 206, 81, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(255, 206, 81, 1),
                          width: 5,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Text('от 10000тг'),
                    ))
              ],
            ),
            const SizedBox(width: 2),
            Stack(
              children: [
                Container(
                  height: 106,
                  width: 246,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/bitmap/f4.png'),
                    ),
                  ),
                  child: const Center(
                      child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.0, left: 8),
                      child: Text(
                        'Бизнес',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
                ),
                Positioned(
                    bottom: 10,
                    right: 40.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 206, 81, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(255, 206, 81, 1),
                          width: 5,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Text('от 10000тг'),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
