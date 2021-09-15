import 'package:flutter/material.dart';

class BookStoreMainPage extends StatefulWidget {
  const BookStoreMainPage({Key? key}) : super(key: key);

  @override
  _BookStoreMainPageState createState() => _BookStoreMainPageState();
}

class _BookStoreMainPageState extends State<BookStoreMainPage> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 16,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border(top: BorderSide(color: Colors.grey))),
          height: 72,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: deviceHeight / 9,
                decoration: BoxDecoration(color: Colors.red),
              ),
              Container(
                height: deviceHeight / 11,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                height: deviceHeight / 7.5,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: deviceHeight / 11,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: deviceHeight/3,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
              ),
              Container(
                height: deviceHeight/11,
                decoration: BoxDecoration(
                  color: Colors.green
                ),
              ),
              Container(
                height: deviceHeight/3,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
