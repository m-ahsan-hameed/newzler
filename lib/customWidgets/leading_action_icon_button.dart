import 'package:flutter/material.dart';

class LeadingActionIconButton extends StatelessWidget {
  const LeadingActionIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset("assets/images/left.png", fit: BoxFit.contain),
          ),
        ),
        InkWell(
          child: SizedBox(
            height: 20,
            width: 20,
            child: Image.asset("assets/images/cancel.png", fit: BoxFit.contain),
          ),
        ),
      ],
    );
  }
}
