import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        decoration: buildBoxDecoration(),
        child:Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Image(
                image:  AssetImage('logo_v3.png'),
                width: 400,
              ),
            )
          )
        )
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('fondo_v1.png'),
          fit: BoxFit.cover
        )
      );
  }
}
