import 'package:flutter/material.dart';

import './category.dart';

class CategoryItem extends StatelessWidget {
  final Key key;
  final Category category;

  const CategoryItem({this.key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
