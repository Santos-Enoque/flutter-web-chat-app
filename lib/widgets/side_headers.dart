import 'package:flutter/material.dart';

import 'custom_text.dart';

class SideHeaders extends StatelessWidget {
  final String text;

  const SideHeaders({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return            Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: CustomText(text: text,
            size: 16,
            color: Colors.grey,
            weight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
