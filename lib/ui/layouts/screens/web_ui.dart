import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';
import 'widgets/body.dart';

class WebUi extends StatelessWidget {
  const WebUi({super.key});
 @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
             Spacer(),
            // It will cover 1/3 of free spaces
            Body(),
             Spacer(
              flex: 2,
            ),
            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }
}
