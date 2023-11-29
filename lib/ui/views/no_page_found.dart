import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPageFoundView extends StatelessWidget {
  const NoPageFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child:  Center(
        child: Text(
          '404 - Página no Encontrada',
          style: GoogleFonts.roboto(
            fontSize: 50,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          ),
     ),
    );
  }
}
