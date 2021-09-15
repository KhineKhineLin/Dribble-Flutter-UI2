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
          padding: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border(top: BorderSide(color: Colors.grey))),
          height: 72,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 30,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.book,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    'Bookmark',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    'Favorite',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_shopping_cart,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Text(
                    'My Cart',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: deviceHeight / 9,
                child: Row(
                  children: [
                    Icon(
                      Icons.bookmark_border,
                      size: 40,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Biblic Globe',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      size: 40,
                    )
                  ],
                ),
              ),
              Container(
                height: deviceHeight / 12,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Container(
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        icon: Icon(Icons.search)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                height: deviceHeight / 9,
                child: Row(
                  children: [
                    Container(
                      width: 160,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.whatshot,
                            color: Colors.red,
                            size: 34,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Best Seller',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 160,
                      height: double.infinity,
                      padding: EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none,
                            color: Colors.red,
                            size: 34,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'New Items',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: deviceHeight / 11,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: deviceHeight / 3,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              Container(
                height: deviceHeight / 11,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: deviceHeight / 3,
                decoration: BoxDecoration(color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
