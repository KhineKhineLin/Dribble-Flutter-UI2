import 'package:dribble_flutter_ui2/discount%20tour%20app/main_page.dart';
import 'package:dribble_flutter_ui2/hair%20salons%20app/hair_salons_main_page.dart';
import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  const Apps({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HairSalonsMainPage(),
    );
  }
}