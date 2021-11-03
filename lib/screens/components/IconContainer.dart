import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/colors.dart';

class IconContainer extends StatelessWidget {
  final SvgPicture picture;

  final Function pressed;
  const IconContainer({Key? key, required this.picture, required this.pressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16)),
        child: IconButton(
          onPressed: pressed(),
          icon: picture,
        ));
  }
}
