import 'package:day_1/widgets/photo_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: PhotoItem(
            url: 'assets/new.png', 
            bigLabel: 'Minimalism 101', 
            smallLabel: 'Graphic Design', 
          ),
        )
      ),
    );
  }
}