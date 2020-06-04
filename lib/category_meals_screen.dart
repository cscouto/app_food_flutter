import 'package:flutter/material.dart';
import 'package:food_app/category.dart';
import 'package:food_app/dummy_categories.dart';
import 'package:food_app/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final Category _category = ModalRoute.of(context).settings.arguments;
    final _categoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(_category.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          final item = _categoryMeals[index];
          return MealItem(
            key: ValueKey(item.imageUrl),
            meal: item,
          );
        },
        itemCount: _categoryMeals.length,
      ),
    );
  }
}
