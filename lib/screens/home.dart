import 'package:chat_app/widgets/chat_box.dart';
import 'package:chat_app/widgets/custom_text.dart';
import 'package:chat_app/widgets/side_headers.dart';
import 'package:chat_app/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(222, 229, 238, 1),
      body: Row(
        children: [
          SideMenu(),
          Expanded(
            child: ChatBox(),
          )
        ],
      ),
    );
  }
}
