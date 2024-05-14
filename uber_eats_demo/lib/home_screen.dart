import 'package:flutter/material.dart';
import 'notification_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 85,
        title: Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Uber Eats Demo Search...',
                    hintStyle: const TextStyle(color: Colors.black12),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 133, 131, 131),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.only(bottom: 50),
              child: IconButton(
                icon: const Icon(Icons.notifications),
                color: const Color.fromARGB(255, 133, 131, 131),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()));
                },
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          ImageCard(
            imagePath:
                'https://img.freepik.com/free-photo/real-food-pyramid-assortment-top-view_23-2150238927.jpg?t=st=1715670103~exp=1715673703~hmac=180a540e519a02074c8b01051bfe5f69ac695b6d2c943a108207ab89bdadedad&w=740',
            initials: 'Grocery',
            onPressed: () {
              Navigator.pushNamed(
                  context, '/uber_eats_demo/lib/grocery_screen.dart');
            },
          ),
          ImageCard(
              imagePath:
                  "https://www.tastingtable.com/img/gallery/what-makes-restaurant-burgers-taste-different-from-homemade-burgers-upgrade/intro-1662064407.webp",
              initials: "Burgers",
              onPressed: () {})
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String initials;
  final void Function() onPressed;

  // ignore: use_key_in_widget_constructors
  const ImageCard({
    required this.imagePath,
    required this.initials,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 88, 84, 84),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: <Widget>[
            Image.network(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            const SizedBox(height: 5),
            Text(
              initials,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function() onPressed;

  const RoundIconButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(icon, size: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
