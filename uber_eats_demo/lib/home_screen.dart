import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        _buildCard("Grocery", "Cheap", "Find grocery at a cheaper price.",
            "https://images.unsplash.com/photo-1606780290001-4b3b3e3b3b3b"),
        _buildCard("Grocerys", "Cheap", "The best grocerys in town.",
            'https://images.unsplash.com/photo-1606780290001-4b3b3e3b3b3b'),
      ],
    ));
  }

  Widget _buildCard(String title, String subtitle, String description,
      String imagePath, String imageUrl) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          ListTile(
            title: Text(title),
            subtitle: Text(description),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
