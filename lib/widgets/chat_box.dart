import 'package:chat_app/providers/auth.dart';
import 'package:chat_app/widgets/users_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom_chat_buble.dart';
import 'footer.dart';

class ChatBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 300,
                child: UsersCardWidget(
                  userModel: authProvider.userModel,
                )),
            SizedBox(
              width: 100,
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            )
          ],
        ),
        Divider(),
        Expanded(
          child: ListView(
            children: [
              CustomChatBubble(
                isMe: false,
                user: "Kelly John",
                text: "Hey there",
              ),
              CustomChatBubble(
                isMe: true,
                user: "Santos Enoque",
                text: "Hey, whats up?",
              ),
              CustomChatBubble(
                isMe: false,
                user: "Kelly John",
                text: "I am fine,  and you?",
              ),
              CustomChatBubble(
                isMe: true,
                user: "Santos Enoque",
                text: "In publishing and graphic design, Lorem ipsum is  ",
              ),
              CustomChatBubble(
                isMe: false,
                user: "Kelly John",
                text: "In publishing and graphic design, Lorem ipsum is",
              ),
            ],
          ),
        ),
        Divider(),
        Footer()
      ],
    );
  }
}
