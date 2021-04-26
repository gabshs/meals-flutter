import 'package:flutter/material.dart';
import 'package:my_meals/core/routes.dart';
import 'package:my_meals/models/category.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  const CategoryWidget({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => Navigator.of(context)
          .pushNamed(Routes.CATEGORY_FOODS, arguments: category),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(category.imageSrc), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: FittedBox(
              child: Container(
                width: 136,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(15),
                    bottomRight: const Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    category.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
