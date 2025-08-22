import 'package:flutter/material.dart';

import '../Controllers/Widgets/Buttons/Getstartbutton.dart';
import '../Controllers/Widgets/Buttons/Mainbutton.dart';
class Textscreen extends StatelessWidget {
  const Textscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 50),
           child:Mainbutton(text: 'Sign in with Your account'),
         ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
            child: Getstartbutton(text: 'Get start'),
          )

    ],
      ),
    );
  }
}
