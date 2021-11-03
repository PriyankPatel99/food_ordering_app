import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/models/MyFiles.dart';
import 'package:food_ordering_app/screens/widgets/categoryslider.dart';

import '../colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomSheet: Container(
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.width,
          color: isDarkMode
              ? Theme.of(context).primaryColor
              : AppColors.bottomsheet,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                  height: 48,
                  width: 104,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(18)),
                  child: Center(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              print("Home");
                            },
                            icon: SvgPicture.asset(
                              "assets/home.svg",
                              color: AppColors.fullbutton,
                            )),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.fullbutton),
                        )
                      ],
                    ),
                  )),
              Spacer(),
              IconButton(
                  onPressed: () {
                    print("search");
                  },
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: isDarkMode
                        ? AppColors.subtextdark
                        : AppColors.subtextlight,
                  )),
              Spacer(),
              IconButton(
                onPressed: () {
                  print("begs");
                },
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: isDarkMode
                      ? AppColors.subtextdark
                      : AppColors.subtextlight,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  print("User");
                },
                icon: Icon(
                  Icons.person_outline_outlined,
                  size: 30,
                  color: isDarkMode
                      ? AppColors.subtextdark
                      : AppColors.subtextlight,
                ),
              ),
              Spacer(),
            ],
          )),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 34.67, left: 15, bottom: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 26,
                    color: AppColors.fullbutton,
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "242 ST Marks Eve, Finland ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: isDarkMode
                                ? AppColors.subtextdark
                                : AppColors.subtextlight),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 130,
              child: CategorySlider(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 18),
              child: Row(
                children: [
                  Text(
                    "Popular Restaurents",
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
            FileInfoCardGridView(),
            SizedBox(
              height: 64,
            )
          ],
        ),
      )),
    );
  }
}

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                    color: info.color, borderRadius: BorderRadius.circular(16)),
                child: IconButton(
                  onPressed: () {
                    print("popular_restaurents");
                  },
                  icon: SvgPicture.asset(info.svgSrc!),
                )),
            SizedBox(
              width: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.50),
              child: Container(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          info.title!,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Text(
                          "50% OFF",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.fullbutton),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Color(0xFFFFB200),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: isDarkMode
                                  ? AppColors.subtextdark
                                  : Colors.black),
                        ),
                        Text(
                          " • Chienese  • ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: isDarkMode
                                  ? AppColors.subtextdark
                                  : AppColors.subtextlight),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.watch_later_outlined,
                          size: 12,
                          color: isDarkMode
                              ? AppColors.subtextdark
                              : AppColors.subtextlight,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "15 min",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: isDarkMode
                                  ? AppColors.subtextdark
                                  : AppColors.subtextlight),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
    );
  }
}
