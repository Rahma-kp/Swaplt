import 'package:flutter/material.dart';
import 'package:swaplt/widget/TileWidget.dart';

class Listingscreen extends StatelessWidget {
  const Listingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Listing")),
      body: Expanded(
        child: Column(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                buildStyledTile(
                  icon: Icons.add_alert_sharp,
                  title: "dfghj",
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
