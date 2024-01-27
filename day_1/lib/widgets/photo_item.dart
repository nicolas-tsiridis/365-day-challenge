import 'package:day_1/widgets/label_item.dart';
import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  const PhotoItem({
    super.key,
    required this.url,
    required this.bigLabel,
    required this.smallLabel,
  });
  final String url;
  final String bigLabel;
  final String smallLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - (2 * MediaQuery.of(context).padding.left) - 110,
          child: Image.asset(url, fit: BoxFit.cover)
        ),
        LabelItem(
          bigLabel: bigLabel, 
          smallLabel: smallLabel,
        )
      ],
    );
  }
}