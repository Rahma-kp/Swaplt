import 'package:flutter/material.dart';
import 'package:swaplt/widget/CategoryWidget.dart';
import 'package:swaplt/widget/PopularCatogory.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Swaplt", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search....",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                itemBuilder: (context, index) =>
                    buildCategoryItem(Icons.camera_alt_outlined, "Label"),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Popular",
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 3 / 2.5,
                children: List.generate(
                  6,
                  (index) =>
                      buildPopularItem(Icons.shopping_bag, "Item $index"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
