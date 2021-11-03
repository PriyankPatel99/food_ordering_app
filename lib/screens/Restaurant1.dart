import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/screens/widgets/CardSlider.dart';
import 'package:food_ordering_app/screens/widgets/MenuGrid.dart';
import 'package:food_ordering_app/screens/widgets/MenuSlider.dart';

import 'components/IconContainer.dart';

class Restaurant1 extends StatelessWidget {
  const Restaurant1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 25, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconContainer(
                    pressed: () {
                      print("object");
                    },
                    picture: SvgPicture.asset(
                      "assets/back.svg",
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  Spacer(),
                  IconContainer(
                    pressed: () {
                      print("object");
                    },
                    picture: SvgPicture.asset(
                      "assets/like.svg",
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  IconContainer(
                    pressed: () {
                      print("object");
                    },
                    picture: SvgPicture.asset(
                      "assets/upload.svg",
                      color: Theme.of(context).primaryColorDark,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 301,
              child: MenuSlider(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Row(
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        print("Shorting");
                      },
                      icon: SvgPicture.asset("assets/options.svg",
                          color: Theme.of(context).primaryColorDark))
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.92,
              height: 50,
              child: MenuSalider(),
            ),
            MenuInfoCardGridView(
              isNull: 2,
            )
          ],
        ),
      ),
    );
  }
}
