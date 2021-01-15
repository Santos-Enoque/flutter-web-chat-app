import 'package:chat_app/screens/home.dart';
import 'package:chat_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.blueGrey,
                    Colors.indigo
                  ]
              )
          ),
          child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
            ],
          ),
          CustomText(text: "Select authentication method", color: Colors.white,),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              HomeScreen().launch(context);
            },
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    offset: Offset(2, 3),
                    blurRadius: 7
                  )
                ]

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                      width: 50
                      ,child: Image.asset("assets/images/google.png")),
                      CustomText(text: "Use Google")
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    ),
        ));
  }
}
