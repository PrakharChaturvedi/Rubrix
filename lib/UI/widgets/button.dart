import 'package:flutter/material.dart';
import 'package:rubrics/UI/theme.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTap;

  const MyButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // onTap : onTap;
      },
      child: Container(
        width: 100,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bluishColor,
        ),
        child: Text(
          label, style: const TextStyle(
              color: Colors.white,
            ),
        ),
      ),
    );
  }
}
