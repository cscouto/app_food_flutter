import 'package:flutter/material.dart';

import './categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.redAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight:  FontWeight.bold,
              ),
            ),
      ),
      home: CategoriesScreen(),
    );
  }
}
