import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LinkText extends StatelessWidget {
  const LinkText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        text,
        style:  GoogleFonts.robotoCondensed(
          color: Colors.grey[700],
          fontSize: 16,
          decoration: TextDecoration.underline
        ),
      ),
    );
  }
}