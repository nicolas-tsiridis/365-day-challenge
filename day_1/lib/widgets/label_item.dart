import 'package:flutter/material.dart';

class LabelItem extends StatelessWidget {
  const LabelItem({
    super.key,
    required this.bigLabel,
    required this.smallLabel
  });
  final String bigLabel;
  final String smallLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(bigLabel, style: const TextStyle(
                fontSize: 20,
              )),
              Text(smallLabel, style: const TextStyle(fontWeight: FontWeight.w300),),
            ],
          ),
        ]
      ),
    );
  }
}