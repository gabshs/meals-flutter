import 'package:flutter/material.dart';
import 'package:my_meals/core/routes.dart';
import 'package:my_meals/screens/categories_screen.dart';
import 'package:my_meals/screens/category_foods_screen.dart';
import 'package:my_meals/screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Meals',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      routes: {
        Routes.HOME_PAGE: (ctx) => CategoriesScreen(),
        Routes.CATEGORY_FOODS: (ctx) => CategoryFoodsScreen(),
        Routes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
    );
  }
}
