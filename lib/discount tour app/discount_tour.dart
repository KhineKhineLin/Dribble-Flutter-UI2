import 'package:flutter/material.dart';

import 'main_page.dart';

class DiscountTour extends StatelessWidget {
  const DiscountTour({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}