import 'package:flutter/material.dart';
import 'package:food_app/category.dart';
import 'package:food_app/dummy_categories.dart';
import 'package:food_app/meal.dart';
import 'package:food_app/meal_item.dart';

class CategoryMealScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  Category _category;
  List<Meal> _categoryMeals;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _category = ModalRoute.of(context).settings.arguments;
    _categoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(_category.id))
        .toList();
    super.didChangeDependencies();
  }

  void _removeMeal(Meal meal) {
    setState(() {
      _categoryMeals.removeWhere((element) => element.id == meal.id);
    });
  }

  @override
  Widget build(BuildContext context) {
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
            callback: _removeMeal,
          );
        },
        itemCount: _categoryMeals.length,
      ),
    );
  }
}
