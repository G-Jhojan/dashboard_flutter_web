import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: const [
          //Desktop
          _DesktopBody(),
          //Mobile

          //LinksBar
        ],
      )
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Container(
      width: size.width,
      height: size.height,
      color: Colors.red,
      child: Row(
        children:  [
         Expanded(
           child: Container(
             color: Colors.blue,
           ),
         ),
         Container(
          width: 600,
          height: double.infinity,
          color: Colors.green,
          child: const  Center(
            child: Text('Login Form'),
          )
         )
        ],
      ),
    );
  }
}
