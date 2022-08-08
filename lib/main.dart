import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes.dart';
import 'package:mvvm/utils/routes_Name.dart';
import 'package:mvvm/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    initialRoute: RouteName.login,
    onGenerateRoute: Routes.generateRoute,
    );
  }
}

