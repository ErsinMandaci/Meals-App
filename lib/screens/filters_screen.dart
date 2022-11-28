import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FilterScreens extends StatefulWidget {
  static const routeName = '/filters';

  const FilterScreens({Key? key}) : super(key: key);

  @override
  State<FilterScreens> createState() => _FilterScreensState();
}

class _FilterScreensState extends State<FilterScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filters'),
      ),
    );
  }
}
