import 'package:flutter/material.dart';
import 'home_page.dart'; // Import Home Page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weed Management',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(), // Ensure this is HomePage()
    );
  }
}
