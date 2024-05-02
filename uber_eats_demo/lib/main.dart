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
      home: const MyHomePage(title: 'Uber Eats Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
