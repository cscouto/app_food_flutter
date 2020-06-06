import 'package:flutter/material.dart';
import 'package:food_app/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(),
      drawer: MainDrawer(),
    );
  }
}
