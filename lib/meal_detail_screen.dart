import 'package:flutter/material.dart';
import 'meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  @override
  Widget build(BuildContext context) {
    final Meal _meal = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(_meal.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              _meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingredientes',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                final _ingredient = _meal.ingredients[index];
                return Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(child: Text(_ingredient), padding: EdgeInsets.all(15),),
                );
              },
              itemCount: _meal.ingredients.length,
            ),
          ),
        ],
      ),
    );
  }
}
