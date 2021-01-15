import 'package:chat_app/widgets/online.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';
import 'offline.dart';

class UsersCardWidget extends StatelessWidget {
  final bool isOnline;

  const UsersCardWidget({Key key, this.isOnline}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return                 Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        hoverColor: Colors.blue,
        focusColor: Colors.blueGrey,
        onTap: (){},
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
        title: CustomText(text: "Santos Enoque",),
        trailing: isOnline ? OnlineWidget() : OfflineWidget(),
      ),
    );
  }
}
