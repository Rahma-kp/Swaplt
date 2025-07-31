import 'package:flutter/material.dart';
import 'package:swaplt/view/ListingScreen.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  final List<String> cat = const ["My Listing", "Favorites", "Settings"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue[100],
              radius: 60,
              child: const Icon(Icons.person, size: 60, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            for (String label in cat) ...[
              ProfileTile(label: label),
              const SizedBox(height: 12),
            ],
          ],
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String label;

  const ProfileTile({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Listingscreen(),));
    },
      child: Container(
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
