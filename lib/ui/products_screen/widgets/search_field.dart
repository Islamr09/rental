import 'package:flutter/material.dart';
import 'package:verstka/ui/products_screen/widgets/filter_page.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key, this.onChanged}) : super(key: key);

  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: onChanged,
            style: AppStyles.s16w400,
            cursorColor: AppColors.mainText,
            decoration: InputDecoration(
              hintText: 'Поиск',
              hintStyle: AppStyles.s16w400.copyWith(
                color: AppColors.neutral2,
              ),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14.0,
                horizontal: 18.0,
              ),
              filled: true,
              fillColor: AppColors.neutral1,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(36.0),
                borderSide: BorderSide.none,
              ),
              prefixIcon: const Icon(
                Icons.search,
                size: 26.0,
                color: AppColors.neutral2,
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.filter_list_alt),
                iconSize: 26.0,
                color: AppColors.neutral2,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FilterPage(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
