import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Image.asset('lib/assets/images/bitmap/f1.png'),
            ),
            const SizedBox(width: 10),
            Container(
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Image.asset('lib/assets/images/bitmap/f2.png'),
            ),
            const SizedBox(width: 10),
            Container(
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Image.asset('lib/assets/images/bitmap/f3.png'),
            ),
          ],
        ),
      ),
    );
  }
}
