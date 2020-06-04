import 'package:flutter/material.dart';
import 'package:food_app/category.dart';
import 'package:food_app/dummy_categories.dart';

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
          return Text(
            _categoryMeals[index].title,
          );
        },
        itemCount: _categoryMeals.length,
      ),
    );
  }
}
