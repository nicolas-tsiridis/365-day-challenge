import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap,
      required this.selected});
  final Icon icon;
  final String label;
  final Function()? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                  color: (selected) ? Colors.grey[200] : Colors.transparent,
                  height: 65,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      icon,
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            label,
                            style: TextStyle(
                                color: (selected) ? Colors.blue : Colors.black),
                          ))
                    ],
                  )),
            ),
            (selected)
                ? Container(width: 10, height: 65, color: Colors.blue)
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
