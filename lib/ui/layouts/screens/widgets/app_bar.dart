import 'package:flutter/material.dart';

import 'default_button.dart';
import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(width: 5),
          Text(
            "Foodi".toUpperCase(),
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
         const MenuItem(
            title: "Home",

          ),
         const MenuItem(
            title: "about",

          ),
         const MenuItem(
            title: "Pricing",

          ),
         const MenuItem(
            title: "Contact",

          ),
         const MenuItem(
            title: "Login",

          ),
          const DefaultButton(
            text: "Get Started",

          ),
        ],
      ),
    );
  }
}
