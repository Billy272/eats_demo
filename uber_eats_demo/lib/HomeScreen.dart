import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: <Widget>[
        //Create cards
        Card(
          child: ListTile(
            title: Text('Grocery'),
            subtitle: Text('Grocery Screen Content'),
            //insert an image in this card as background
            leading: Image.asset('assets/grocery.jpg'),
          ),
        ),
      ],
    ));
  }
}
