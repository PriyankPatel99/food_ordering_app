import 'dart:ffi';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_ordering_app/models/menuinfo.dart';

import '../../colors.dart';

class MenuInfoCard extends StatelessWidget {
  const MenuInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final MenuInfo info;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                info.imagepath!,
                width: 80,
                height: 80.0,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Container(
              width: 150,
              height: 81,
              padding: EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.title!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    info.subtitle!,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: isDarkMode
                            ? AppColors.subtextdark
                            : AppColors.subtextlight),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    info.amount,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                    height: 32,
                    width: 88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).cardColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.add, color: AppColors.fullbutton, size: 18)
                      ],
                    )),
                SizedBox(
                  height: 4,
                ),
                Text(
                  info.text!,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: isDarkMode
                          ? AppColors.subtextdark
                          : AppColors.subtextlight),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuInfoCardGridView extends StatelessWidget {
  final int? isNull;
  const MenuInfoCardGridView({Key? key, this.isNull}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: isNull == null ? menufile.length : isNull,
      itemBuilder: (context, index) => MenuInfoCard(info: menufile[index]),
    );
  }
}
