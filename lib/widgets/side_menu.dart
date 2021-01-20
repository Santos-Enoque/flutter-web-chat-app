import 'package:chat_app/providers/user.dart';
import 'package:chat_app/widgets/side_headers.dart';
import 'package:chat_app/widgets/users_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);

    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: Color.fromRGBO(245, 247, 251, 1),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(width: 180, child: Image.asset("assets/images/logo2.png")),
          SideHeaders(
            text: "All Users",
          ),
          Expanded(
            child: Column(
              children: userProvider.users
                  .map((user) => UsersCardWidget(
                        userModel: user,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
