import 'package:flutter/material.dart';

class DogSitters extends StatefulWidget {
  const DogSitters({Key? key}) : super(key: key);

  @override
  State<DogSitters> createState() => _DogSittersState();
}

class _DogSittersState extends State<DogSitters> {
  Color appColor = Color(0xff143b3e);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24))),
                  child: Column(
                    children: [
                      Expanded(flex: 2, child: Placeholder()),
                      Expanded(flex: 5, child: Placeholder()),
                      Expanded(flex: 5, child: Placeholder())
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Expanded(flex: 2, child: Placeholder()),
                    Expanded(flex: 8, child: Placeholder())
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_city), title: Text('Location'))
        ],
      ),
    );
  }
}
