import 'package:flutter/material.dart';
import 'package:verstka/constants/app_assets.dart';
import 'package:verstka/constants/app_styles.dart';
import 'package:verstka/ui/products_screen/widgets/products_list_screen.dart';

const List<String> list = <String>['Алматы', 'Астана', 'Актау', 'Семей'];
String dropdownValue = '';
bool valuefirst = false;
bool valuesecond = false;

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductsListScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 90),
                    child: const Text(
                      'Фильтры',
                      style: AppStyles.textFilter,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Ценовой диапозон',
                    style: AppStyles.textFilter,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: 'От',
                            suffixIcon: Image(
                              image: AssetImage(AppAssets.images.tenge),
                            ),
                            hintStyle: AppStyles.textInF,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: 'До',
                            hintStyle: AppStyles.textInF,
                            suffixIcon: Image(
                              image: AssetImage(AppAssets.images.tenge),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  const Text(
                    'Город',
                    style: AppStyles.textCityAndCharacter,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                        itemHeight: 56,
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Выберите город',
                            style: AppStyles.textInF,
                          ),
                        ),
                        icon: const Icon(Icons.navigate_next),
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value.toString();
                          });
                        }),
                  ),
                  const SizedBox(height: 48),
                  const Text(
                    'Характеристики',
                    style: AppStyles.textCityAndCharacter,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 100,
                    child: Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12))),
                              height: 10,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(AppAssets.images.sedan),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Седан',
                                          style: AppStyles.s16w500F,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12))),
                              height: 10,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(AppAssets.images.xetchbek),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Хэтчбек',
                                          style: AppStyles.s16w500F,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12))),
                              height: 10,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(AppAssets.images.miniven),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Минивен',
                                          style: AppStyles.s16w500F,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                        itemHeight: 56,
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Марка',
                            style: AppStyles.textInF,
                          ),
                        ),
                        icon: const Icon(Icons.navigate_next),
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value.toString();
                          });
                        }),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                        itemHeight: 56,
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Модель',
                            style: AppStyles.textInF,
                          ),
                        ),
                        icon: const Icon(Icons.navigate_next),
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value.toString();
                          });
                        }),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                        itemHeight: 56,
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Год выпуска',
                            style: AppStyles.textInF,
                          ),
                        ),
                        icon: const Icon(Icons.navigate_next),
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value.toString();
                          });
                        }),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                        itemHeight: 56,
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Коробка передача',
                            style: AppStyles.textInF,
                          ),
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value.toString();
                          });
                        }),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                        itemHeight: 56,
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Количество мест',
                            style: AppStyles.textInF,
                          ),
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value.toString();
                          });
                        }),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                ),
                                child: Image.asset(
                                  AppAssets.images.trassa,
                                  height: 50,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Text('Трасса'),
                              ),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Image.asset(
                                  AppAssets.images.mountain,
                                  height: 50,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text('Горы'),
                              ),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Image.asset(
                                  AppAssets.images.gorod,
                                  height: 50,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Text('Город'),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CheckboxListTile(
                          value: valuefirst,
                          onChanged: null,
                          subtitle: const Text(
                            'Бесплатная доставка',
                            style: AppStyles.s16w500F,
                          ),
                        ),
                        CheckboxListTile(
                          value: valuesecond,
                          onChanged: null,
                          subtitle: const Text(
                            'Детское сиденье',
                            style: AppStyles.s16w500F,
                          ),
                        ),
                        const CheckboxListTile(
                          value: false,
                          onChanged: null,
                          subtitle: Text(
                            'Безлимит киллометров',
                            style: AppStyles.s16w500F,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
