class MenuInfo {
  String? title, subtitle, text, imagepath;
  String amount;
  MenuInfo({
    this.title,
    this.subtitle,
    this.text,
    this.imagepath,
    required this.amount,
  });
}

List menufile = [
  MenuInfo(
    title: "Margherita Margherita Margherita",
    subtitle: "In Veg Pizza",
    text: "Customizable",
    imagepath: "assets/pizza2.jpg",
    amount: "\$12.50",
  ),
  MenuInfo(
    title: "Veg Loaded",
    subtitle: "In Pizza Mania",
    text: "Customizable",
    imagepath: "assets/pizza1.jpg",
    amount: "\$8.50",
  ),
  MenuInfo(
    title: "Farm House",
    subtitle: "In Pizza Mania",
    text: " ",
    imagepath: "assets/pizza3.jpg",
    amount: "\$8.50",
  ),
  MenuInfo(
    title: "Fresh Veggie",
    subtitle: "In Pizza Mania",
    text: " ",
    imagepath: "assets/pizza4.jpg",
    amount: "\$11.99",
  ),
  MenuInfo(
    title: "Tomato",
    subtitle: "In Pizza Mania",
    text: " ",
    imagepath: "assets/pizza5.jpg",
    amount: "\$8",
  ),
  MenuInfo(
    title: "Margherita",
    subtitle: "In Veg Pizza",
    text: " ",
    imagepath: "assets/pizza6.jpg",
    amount: "\$120.50",
  ),
];
