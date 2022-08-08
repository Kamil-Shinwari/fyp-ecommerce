import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes_Name.dart';
import 'package:mvvm/view/home_page.dart';
import 'package:mvvm/view/login_view.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.home:
      return MaterialPageRoute(builder: (context) => HomePage(),);
      // ignore: prefer_const_constructors
      case RouteName.login:
      return MaterialPageRoute(builder: (context) => LogInView(),);
      
      default:
      return MaterialPageRoute(builder: (context) {
        return Scaffold(
          body: Center(child: Text("No route defined")),
        );
      },);
    }
  }
}