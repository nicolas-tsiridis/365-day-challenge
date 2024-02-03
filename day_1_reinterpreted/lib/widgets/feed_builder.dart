import 'package:day_1_reinterpreted/structures/image_details.dart';
import 'package:flutter/material.dart';

class FeedBuilder extends StatefulWidget {
  const FeedBuilder({
    super.key,
    required this.imageInfo,
  });
  final List<ImageDetails> imageInfo;

  @override
  State<FeedBuilder> createState() => FeedBuilderState();
}

class FeedBuilderState extends State<FeedBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.imageInfo.length,
      itemBuilder: (context, index) {
        return Container();
      }
    );
  }
}