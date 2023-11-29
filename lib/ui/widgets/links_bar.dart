import 'package:flutter/material.dart';

import 'link_text.dart';

class Linksbar extends StatelessWidget {
  const Linksbar({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return  Container(
      height: size.height * 0.07,
      color: Colors.black,
      child:  const Wrap(
        alignment: WrapAlignment.center,
        children: [
          LinkText(text: 'About'),
          LinkText(text: 'Help Center'),
          LinkText(text: 'Terms of Service'),
          LinkText(text: 'Privacy Policy'),
          LinkText(text: 'Cookie Policy'),
          LinkText(text: 'Ads info'),
          LinkText(text: 'Blog'),
          LinkText(text: 'Status'),
          LinkText(text: 'Careers'),
          LinkText(text: 'Brand Resources'),
        ],

        //alignment: WrapAlignment.center,

      ),
    );
  }
}
