import 'package:flutter/material.dart';
import 'package:swaplt/widget/CategoryWidget.dart';
import 'package:swaplt/widget/PopularCatogory.dart';

class Categoriesscreen extends StatelessWidget {
  const Categoriesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categories"),),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 3 / 2.5,
                children: List.generate(
                  10,
                  (index) =>
                      buildPopularItem(Icons.shopping_bag, "Item $index"),
                ),
              ),
            ),
        ],),
      ),
    );
  }
}