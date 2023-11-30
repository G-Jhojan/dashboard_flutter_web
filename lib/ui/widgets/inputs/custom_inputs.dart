import 'package:flutter/material.dart';

class CustomInputs{
  static  InputDecoration loginInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      iconColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.3))
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white60)
      ),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.white.withOpacity(0.3)),
      hintStyle:  TextStyle(color: Colors.white.withOpacity(0.3)),
      labelStyle: const TextStyle(color: Colors.white),
    );
  }
}
