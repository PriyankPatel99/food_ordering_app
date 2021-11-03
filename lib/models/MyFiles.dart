import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Conrad food",
    numOfFiles: 1328,
    svgSrc: "assets/boul.svg",
    totalStorage: "1.9GB",
    color: Colors.blue,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "SK Restro",
    numOfFiles: 1328,
    svgSrc: "assets/boul.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Black Fish",
    numOfFiles: 1328,
    svgSrc: "assets/boul.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Goichi Oniko",
    numOfFiles: 5328,
    svgSrc: "assets/boul.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiles: 1328,
    svgSrc: "assets/boul.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
];
