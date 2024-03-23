import 'package:ecommerce/mainScreen.dart';

import 'package:ecommerce/theme_manger.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
      theme: ThemeManager.lightTheme,

    );
  }
}
