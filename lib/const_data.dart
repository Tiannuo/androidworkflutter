import 'package:flutter/material.dart';
import 'package:moudule_flutter/my_home_page.dart';
import 'package:moudule_flutter/video_page.dart';

const String appTitle = "Flutter Demo";
const String videoPath = "https://video.yinyuetai.com/e3252b4ca21446e69d11dc9b6d33d00f.mp4";
final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
);
const String initialRoute = "main/homePage";
const String videoPageRoute = "main/videoPage";

Map<String, Function> routes = {
  initialRoute: (context) => const MyHomePage(title: "HomePage"),
  videoPageRoute: (context, {arguments}) => VideoPage(title: "videoPage", arguments: arguments)
};
