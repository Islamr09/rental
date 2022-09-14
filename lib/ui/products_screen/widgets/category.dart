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
            Container(
              width: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/bitmap/sem0.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: const Center(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Эконом',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/bitmap/sem0.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: const Center(
                  child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Комфорт',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )),
            ),
            const SizedBox(width: 10),
            Container(
              width: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/bitmap/sem0.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: const Center(
                  child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Бизнес',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
