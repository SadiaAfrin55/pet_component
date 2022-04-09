import 'package:flutter/material.dart';
import 'package:pet_components/Home/see_category.dart';
import 'package:pet_components/OtherPage/settings_page.dart';

import 'Home/home_page.dart';
import 'HomePreference/home_preference.dart';
import 'OtherPage/details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/preference',
      routes: {
        '/preference': (context) => HomePreference(),
        '/home': (context) => HomePage(),
        '/seeCategory': (context) => SeeCategory(),
        '/settingsPage': (context) => SettingsPage(),
        '/details': (context) => DetailsScreen(),
        '/blog': (context) => HomePage(),
        '/blogDetails': (context) => HomePage(),
      },
    );
  }
}

