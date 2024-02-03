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
          child: SingleChildScrollView(
            child: Column(
              children: [
                PhotoItem(
                  url: 'assets/new.png', 
                  bigLabel: 'Minimalism 101', 
                  smallLabel: 'Graphic Design', 
                ),
                PhotoItem(
                  url: 'assets/thing.png', 
                  bigLabel: 'Product Placements 101', 
                  smallLabel: 'This is crazy...', 
                ),
                PhotoItem(
                  url: 'assets/new.png', 
                  bigLabel: 'Marketing 101', 
                  smallLabel: "Now we're talking", 
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}