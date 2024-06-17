import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      iconTheme: const IconThemeData(color: Colors.blue),
      appBarTheme: const AppBarTheme(
        color: Colors.grey,
        actionsIconTheme: IconThemeData(color: Colors.red),
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
        actions: const [
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      ),
      body: const Row(
        children: [
          Text('빨갱이', style: TextStyle(fontSize: 20)),
          Icon(Icons.star)
        ],
      ),
    );
  }
}
