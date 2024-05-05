import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Eats Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home Screen Content'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.black,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apple),
            backgroundColor: Colors.black,
            label: "Grocery",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Colors.black,
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            backgroundColor: Colors.black,
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.black,
            label: "Profile",
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 133, 131, 131),
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GroceryScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartScreen()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          }
        },
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {},
                ))
          ],
        ),
      ),
      body: const Center(),
    );
  }
}

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {},
                ))
          ],
        ),
      ),
      body: const Center(),
    );
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {},
                ))
          ],
        ),
      ),
      body: const Center(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {},
                ))
          ],
        ),
      ),
      body: const Center(),
    );
  }
}
