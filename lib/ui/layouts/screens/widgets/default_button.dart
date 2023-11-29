import 'package:flutter/material.dart';



class DefaultButton extends StatelessWidget {
  final String? text;
  //final Function? press;
  const DefaultButton({
    Key? key,
     this.text,
    // this.press
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
        ),
        onPressed: (){},
        child: Text(
          text!.toUpperCase(),
        ),
      ),
    );
  }
}
