import 'package:flutter/material.dart';



class MenuItem extends StatelessWidget {
  final String? title;
  //final Function press;
  const MenuItem({super.key,

    this.title,
    //this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title!,
          style: TextStyle(
            color: Colors.pink.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
