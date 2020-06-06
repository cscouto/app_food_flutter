import 'package:flutter/material.dart';
import 'package:food_app/category_item.dart';

import './dummy_categories.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (ctx, index) {
        final item = DUMMY_CATEGORIES[index];
        return CategoryItem(
          key: ValueKey(item.id),
          category: item,
        );
      },
      itemCount: DUMMY_CATEGORIES.length,
    );
  }
}
