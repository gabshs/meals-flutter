import 'package:flutter/material.dart';
import 'package:my_meals/components/category_widget.dart';
import 'package:my_meals/components/title_widget.dart';
import 'package:my_meals/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Cardápios',
          style: TextStyle(
            fontFamily: 'EBGaramond',
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.local_dining)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(
            title: 'Categorias',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: DUMMY_CATEGORIES.map((cat) {
                  return CategoryWidget(
                    category: cat,
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
