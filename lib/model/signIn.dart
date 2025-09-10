import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  final String btnText;

  const MyButton({super.key,
  required this.onTap,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Center(
          child: Text(btnText,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16 ),),
        ),
      ),
    );
  }
}
