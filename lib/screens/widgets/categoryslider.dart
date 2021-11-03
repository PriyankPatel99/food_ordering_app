import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/colors.dart';

class CategorySlider extends StatefulWidget {
  @override
  createState() {
    return new CategorySliderState();
  }
}

class CategorySliderState extends State<CategorySlider> {
  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(true, 'All', "assets/all.svg"));
    sampleData.add(new RadioModel(false, 'Pizza', "assets/pizza.svg"));
    sampleData.add(new RadioModel(false, 'Beverages', "assets/glass.svg"));
    sampleData.add(new RadioModel(false, 'Asian', "assets/Asian.svg"));
    sampleData.add(new RadioModel(false, 'Asian', "assets/Asian.svg"));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: sampleData.length,
      itemBuilder: (BuildContext context, int index) {
        return new InkWell(
          onTap: () {
            setState(() {
              sampleData.forEach((element) => element.isSelected = false);
              sampleData[index].isSelected = true;
            });
          },
          child: new RadioItem(sampleData[index]),
        );
      },
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return new Container(
      margin: EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          new Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Container(
                height: 56,
                width: 56,
                child: new Center(
                    child: SvgPicture.asset(
                  _item.SvgPath,
                  color: isDarkMode
                      ? _item.isSelected
                          ? Colors.white
                          : Colors.white
                      : _item.isSelected
                          ? Colors.white
                          : AppColors.subtextlight,
                )),
                decoration: new BoxDecoration(
                    color: _item.isSelected
                        ? AppColors.fullbutton
                        : Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(_item.buttonText,
              style: new TextStyle(
                  color: isDarkMode
                      ? _item.isSelected
                          ? AppColors.fullbutton
                          : Colors.white
                      : _item.isSelected
                          ? Colors.black
                          : AppColors.subtextlight,
                  //fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText, SvgPath;

  RadioModel(this.isSelected, this.buttonText, this.SvgPath);
}
