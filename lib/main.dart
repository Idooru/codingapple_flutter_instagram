import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      iconTheme: const IconThemeData(color: Colors.blue),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        actionsIconTheme: IconThemeData(size: 40),
      ),
      textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.red)),
    ),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instagram"),
        actions: const [Icon(Icons.add_box_outlined), SizedBox(width: 7)],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.5),
          child: Container(
            color: Colors.grey,
            height: 0.5,
          ),
        ),
      ),
      body: Container(color: Colors.white70),
    );
  }
}
