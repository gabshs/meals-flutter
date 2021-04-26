import 'package:flutter/material.dart';
import 'package:my_meals/core/routes.dart';
import 'package:my_meals/models/meal.dart';

class FoodItemWidget extends StatelessWidget {
  const FoodItemWidget({
    Key key,
    @required this.meal,
  }) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => Navigator.of(context)
            .pushNamed(Routes.MEAL_DETAIL, arguments: meal),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  meal.imageUrl,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 130,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          meal.title,
                          softWrap: true,
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildInfo(
                              Icons.access_time, "${meal.duration} minutos"),
                          buildInfo(
                              Icons.signal_cellular_alt, meal.complexityLevel),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildInfo(IconData icon, String label) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
