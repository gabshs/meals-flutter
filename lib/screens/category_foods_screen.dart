import 'package:flutter/material.dart';
import 'package:my_meals/components/appbar_widget.dart';
import 'package:my_meals/components/food_item_widget.dart';
import 'package:my_meals/components/title_widget.dart';
import 'package:my_meals/data/dummy_data.dart';
import 'package:my_meals/models/category.dart';
import 'package:my_meals/models/meal.dart';

class CategoryFoodsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    final List<Meal> meals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    print(meals);
    return Scaffold(
      appBar: buildAppBar(category.title),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(title: 'Pratos'),
          Expanded(
            child: ListView.builder(
                itemCount: meals.length,
                itemBuilder: (ctx, index) {
                  final Meal meal = meals[index];
                  return FoodItemWidget(meal: meal);
                }),
          ),
        ],
      ),
    );
  }
}
