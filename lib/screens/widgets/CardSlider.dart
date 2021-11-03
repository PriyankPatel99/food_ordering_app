import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering_app/colors.dart';

class MenuSlider extends StatelessWidget {
  const MenuSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return ListView(
      children: [
        CarouselSlider(
          items: [
            Column(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/plash.jpg',
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: 192.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Conrad food",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15.67,
                                    color: Color(0xFFF1BD23),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "4.4 (221)  • ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Pizza  •  Fastfood",
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
                          Spacer(),
                          FlatButton(
                              onPressed: () {
                                print("More info");
                              },
                              child: Text(
                                "More info",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.fullbutton),
                              ))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16.01 / 13.390,
            viewportFraction: 1,
            autoPlayAnimationDuration: Duration(milliseconds: 2000),
          ),
        ),
      ],
    );
  }
}
