import 'package:flutter/material.dart';

class MenuSalider extends StatefulWidget {
  @override
  createState() {
    return new MenuSaliderState();
  }
}

class MenuSaliderState extends State<MenuSalider> {
  List<RadioModel> sampleData = <RadioModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(true, 'Best Seller'));
    sampleData.add(new RadioModel(false, 'Veg Pizza'));
    sampleData.add(new RadioModel(false, 'Pizza Mania'));
    sampleData.add(new RadioModel(false, 'Sides'));
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
    return new Container(
      child: new Row(
        children: <Widget>[
          new Container(
            height: 40.0,
            width: 95.0,
            child: new Center(
              child: new Text(_item.buttonText,
                  style: new TextStyle(
                      color: _item.isSelected
                          ? Colors.white
                          : Theme.of(context).primaryColorDark,
                      //fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500)),
            ),
            decoration: new BoxDecoration(
                color:
                    _item.isSelected ? Colors.blueAccent : Colors.transparent,
                borderRadius: BorderRadius.circular(12)),
          ),
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;

  RadioModel(this.isSelected, this.buttonText);
}
