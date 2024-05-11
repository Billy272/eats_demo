import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        _buildCard("Grocery", "Cheap", "Find grocery at a cheaper price.",
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpngtree.com%2Ffree-backgrounds-photos%2Fgroceries-pictures&psig=AOvVaw2RUHyoZj3JyL2PVEeuw2GD&ust=1715492177749000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjtksjwhIYDFQAAAAAdAAAAABAJ'),
        _buildCard("Burgers", "Cheap", "The best burgers in town.",
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tastingtable.com%2F834391%2Fwhat-makes-restaurant-burgers-taste-different-from-homemade-burgers%2F&psig=AOvVaw1LKj3QK7qqttS43CUTOY3M&ust=1715492326255000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNDd4ozxhIYDFQAAAAAdAAAAABAE'),
      ],
    ));
  }

  Widget _buildCard(
      String title, String subtitle, String description, String imageUrl) {
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
