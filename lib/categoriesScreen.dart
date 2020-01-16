import 'package:flutter/material.dart';

import './dummyData.dart';
import './categoryItem.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food App'),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES
            .map((cat) => CategoryItem(
                  cat.title,
                  cat.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
