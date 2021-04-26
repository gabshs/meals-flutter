import 'package:flutter/material.dart';
import 'package:my_meals/components/title_widget.dart';
import 'package:my_meals/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      backgroundColor: Color(0xFFCA3D26),
      appBar: AppBar(
        backgroundColor: Color(0xFFCA3D26),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: MediaQuery.of(context).size.height * .25,
              width: 167,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  meal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildInfo(
                            Icons.access_time, "${meal.duration} minutos"),
                        buildInfo(
                            Icons.signal_cellular_alt, meal.complexityLevel),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      meal.title,
                      style: TextStyle(fontFamily: 'EBGaramond', fontSize: 36),
                    ),
                  ),
                  TitleWidget(
                    title: 'Ingredientes',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: meal.ingredients.map((ing) {
                        return Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xFFCA3D26),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              ing,
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  TitleWidget(
                    title: 'Modo de Preparo',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: meal.steps.map((ing) {
                        return Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${meal.steps.indexOf(ing) + 1}.",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      ing,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column buildInfo(IconData icon, String label) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40,
        ),
        Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
