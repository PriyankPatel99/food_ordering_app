import 'package:flutter/material.dart';

class SliderModel {
  late String imageAssetPath;
  late String title;
  late String desc;

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc(
      "Healthy eating means eating a variety of foods that give you the nutrients you need to maintain your health, feel good, and have energy.");
  sliderModel.setTitle("Be Togather");
  sliderModel.setImageAssetPath("assets/Frame1.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Order anything you want from your Favorite restaurant.");
  sliderModel.setTitle("Choose A Tasty Dish");
  sliderModel.setImageAssetPath("assets/Frame2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(
      "Payment made easy through debit card, credit card  & more ways to pay for your food");
  sliderModel.setTitle("Easy Payment");
  sliderModel.setImageAssetPath("assets/Frame.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
