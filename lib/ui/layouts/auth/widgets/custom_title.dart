import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'logo_v3.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 20),
           FittedBox(
            fit: BoxFit.contain,
             child: Text(
              'ALLI SHAMUSHKA',
              style: GoogleFonts.montserratAlternates(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
                       ),
           ),
        ],
      ),
    );
  }
}
