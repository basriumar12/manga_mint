import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangamint/components/bottom_nav_bar.dart';
import 'package:mangamint/components/splash_screen.dart';
import 'package:mangamint/screens/chapter_screen/index_chapter.dart';
import 'package:mangamint/screens/detail_screen/index_detail.dart';

MaterialPageRoute pageRoute({RouteSettings routeSettings,Widget builder,bool isFullscreen = false}){
  return MaterialPageRoute(
    builder: (BuildContext context) => builder,
    settings: routeSettings,
    fullscreenDialog: isFullscreen,
  );
}
Route generateRoute(RouteSettings routeSettings){
  final args = routeSettings.arguments;
  switch(routeSettings.name){
    case '/':
      return pageRoute(routeSettings: routeSettings,builder: SplashScreen());
    case '/navbar':
      return pageRoute(routeSettings: routeSettings,builder: BottomNavBar());
    case '/detailmanga':
      return pageRoute(routeSettings: routeSettings,builder: IndexDetail(endpoint: args,));
    case '/chapter':
      return pageRoute(routeSettings: routeSettings,builder: IndexChapter(enpoint: args,),isFullscreen: true);
  }
}