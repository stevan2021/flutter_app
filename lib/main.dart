import 'package:flutter/material.dart';
import 'package:preview_project/screens/loading_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Preview',
      home: LoadingScreen(),
    );
  }
}
