import 'package:flutter/material.dart';

import '../../widgets/links_bar.dart';
import 'widgets/custom_background.dart';
import 'widgets/custom_title.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children:  [

          //Desktop
          _DesktopBody(child: child),
          const Linksbar(),
          //Mobile

          //LinksBar

        ],
      )
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
