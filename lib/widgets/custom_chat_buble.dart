import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class CustomChatBubble extends StatelessWidget {
  final isMe;
  final String text;
  final String user;

  const CustomChatBubble({Key key, this.isMe, this.text, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Bubble(
            margin: BubbleEdges.only(top: 10),
            nip: isMe ?BubbleNip.rightTop :  BubbleNip.leftTop,
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "$user \n",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white)),
                TextSpan(
                    text:
                        "$text \n\n",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white)),
                TextSpan(
                    text: "12:0 AM",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white54,
                        fontSize: 14)),
              ]),
            ),
            color: isMe ? Colors.indigoAccent : Colors.indigo,
          ),
        ],
      ),
    );
  }
}
