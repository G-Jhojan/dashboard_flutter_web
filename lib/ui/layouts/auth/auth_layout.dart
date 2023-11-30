import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../widgets/links_bar.dart';
import 'widgets/custom_background.dart';
import 'widgets/custom_title.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Scaffold(
      body: ListView(
        children:  [
            (size.width > 1000)
            ? _DesktopBody(child: child)
            : _MobileBody(child: child),

          //LinksBar
          const Linksbar(),
        ],
      )
    );
  }
}

class _MobileBody extends StatelessWidget {
  const _MobileBody({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const SizedBox(height: 20,),
           const CustomTitle(),
           Container(
            width: double.infinity,
            height: 420,
            child: child,
           ),
           Container(
            width: double.infinity,
            height: 400,
            child: const CustomBackground(),
           )
          //Expanded(child: child)
        ],
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({required this.child});

    final Widget child;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Container(
      width: size.width,
      height: size.height * 0.95,
      color: Colors.red,
      child: Row(
        children:  [
          const CustomBackground(),
         Container(
          width: 400,
          height: double.infinity,
          color: Colors.green,
          child:   Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                const CustomTitle(),
                const SizedBox(height: 20,),
                 Expanded(child: child)
              ],
            ),
          )
         )
        ],
      ),
    );
  }
}
