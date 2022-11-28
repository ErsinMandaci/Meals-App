import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import 'package:meals_app/widgets/category_item.dart';
import '../dummy_data.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView(
          children: [
            ...DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.id,catData.title, catData.color)).toList(),
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,

          ),
        ),
      ),
    );
  }
}
