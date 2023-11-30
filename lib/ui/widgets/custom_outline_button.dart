import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {

  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;

  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color = Colors.blue,
    this.isFilled = false
    });

  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          )
        ),
        side: MaterialStateProperty.all(
          BorderSide(
            color: color,
            width: 2
          )
        ),
        backgroundColor: MaterialStateProperty.all(
          (isFilled) ? color : Colors.transparent
        ),
      ),
      onPressed: ()=> onPressed(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}
