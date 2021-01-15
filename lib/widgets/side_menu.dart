import 'package:chat_app/widgets/side_headers.dart';
import 'package:chat_app/widgets/users_card.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return           Container(
      width: 400,
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //       color: Colors.grey.withOpacity(.3),
        //       offset: Offset(2, 3),
        //       blurRadius: 3
        //   )
        // ],
        color: Color.fromRGBO(245, 247, 251, 1),
      ),
      child: Column(
        children: [
          SizedBox(height: 20,),
          SizedBox(
              width: 180,
              child: Image.asset("assets/images/logo2.png")),
          SideHeaders(
            text: "Online Users",
          ),
          UsersCardWidget(isOnline: true,),
          UsersCardWidget(isOnline: true,),

          SideHeaders(
            text: "All Users",
          ),
          UsersCardWidget(isOnline: false,),
          UsersCardWidget(isOnline: false,),
          UsersCardWidget(isOnline: false,),
          UsersCardWidget(isOnline: false,),
          UsersCardWidget(isOnline: false,),
          UsersCardWidget(isOnline: false,),
        ],
      ),
    )
    ;
  }
}
