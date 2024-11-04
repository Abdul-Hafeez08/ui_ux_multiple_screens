import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

//import 'Views/Auth/login.dart';
import 'Views/HomePage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tyamo App',
        home: HomePage(),
      );
    });
  }
}
