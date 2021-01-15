import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.3),
                        offset: Offset(2, 3),
                        blurRadius: 7)
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Type a message", border: InputBorder.none),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      offset: Offset(2, 3),
                      blurRadius: 7)
                ]),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
