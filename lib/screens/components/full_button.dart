import 'package:flutter/material.dart';

import '../../colors.dart';

class FullButton extends StatelessWidget {
  final Function pressed;
  final String text;
  const FullButton({Key? key, required this.pressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.80,
      decoration: BoxDecoration(
          color: AppColors.fullbutton, borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: pressed(),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
