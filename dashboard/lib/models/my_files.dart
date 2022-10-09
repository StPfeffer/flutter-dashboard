import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiles, percentage;
  final Color color;

  CloudStorageInfo({
    required this.svgSrc,
    required this.title,
    required this.totalStorage,
    required this.numOfFiles,
    required this.percentage,
    required this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 1238,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "1.9GB",
    color: darkPrimaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiles: 1623,
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "3.1GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiles: 956,
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Drop Box",
    numOfFiles: 3423,
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.4GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
