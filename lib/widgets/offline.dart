import 'package:flutter/material.dart';

class OfflineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: Colors.red ,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
