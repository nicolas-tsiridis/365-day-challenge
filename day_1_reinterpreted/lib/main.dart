import 'package:day_1_reinterpreted/structures/image_details.dart';
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
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

List<ImageDetails> generateInfo(int count) {
  List<ImageDetails> result = [];
  for (int i = 0; i < count; i ++) {
    ImageDetails newImage = ImageDetails(
      100,
      "new.png", 
      "random", 
      "random"
    );
    result.add(newImage);
  }
  return result;
}