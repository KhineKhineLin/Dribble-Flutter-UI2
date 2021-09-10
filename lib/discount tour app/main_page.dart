import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //String khinelinImg = 'https://avatars.githubusercontent.com/u/56064504?v=4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    Spacer(),
                    Icon(
                      Icons.flight_takeoff,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'DiscountTour',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 42),
              child: Text(
                'Find the best tour',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Country',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 16),
              height: MediaQuery.of(context).size.height / 3.4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2017/01/20/00/30/maldives-1993704_960_720.jpg'),
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.15),
                                BlendMode.darken),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 2))
                        ]),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 16,
                            left: 16,
                            right: 16,
                            child: Container(
                              height: 28,
                              child: Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                      child: Text(
                                        'New',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Positioned(
                            top: 16,
                            right: 8,
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2015/09/02/12/39/woman-918583_960_720.jpg'),
                                      fit: BoxFit.cover),
                                  color: Colors.green,
                                  shape: BoxShape.circle),
                            )),
                        Positioned(
                            top: 16,
                            right: 28,
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2017/04/05/10/45/girl-2204622_960_720.jpg'),
                                      fit: BoxFit.cover),
                                  color: Colors.blue,
                                  shape: BoxShape.circle),
                            )),
                        Positioned(
                            top: 16,
                            right: 48,
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2015/09/02/12/58/woman-918788_960_720.jpg'),
                                      fit: BoxFit.cover),
                                  color: Colors.red,
                                  shape: BoxShape.circle),
                            )),
                        Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Container(
                              height: 58,
                              decoration: BoxDecoration(
                                  //color: Colors.blueAccent
                                  ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Thailand',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.2,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        '18 Tours',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 28,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(.3),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.5',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/1538177/pexels-photo-1538177.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.15),
                                BlendMode.darken),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 2))
                        ]),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 16,
                            left: 16,
                            right: 16,
                            child: Container(
                              height: 24,
                              child: Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                      child: Text(
                                        'Sole',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Positioned(
                            top: 16,
                            right: 8,
                            child: Container(
                              padding: EdgeInsets.only(left: 3, right: 8),
                              height: 24,
                              width: 58,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.3),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle),
                                  ),
                                  Text(
                                    '+36',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            )),
                        Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Container(
                              height: 58,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Malaysia',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.2,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        '12 Tours',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 28,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(.3),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.3',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/3560161/pexels-photo-3560161.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.15),
                                BlendMode.darken),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 2))
                        ]),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 16,
                            left: 16,
                            right: 16,
                            child: Container(
                              height: 28,
                              child: Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                      child: Text(
                                        'New',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Positioned(
                            top: 16,
                            right: 8,
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/1674752/pexels-photo-1674752.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle),
                            )),
                        Positioned(
                            top: 16,
                            right: 28,
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/6667480/pexels-photo-6667480.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle),
                            )),
                        Positioned(
                            top: 16,
                            right: 48,
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/8297161/pexels-photo-8297161.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle),
                            )),
                        Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Container(
                              height: 58,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Myanmar',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.2,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        '19 Tours',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 28,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(.3),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.6',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'Popular tours',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 210,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 8),
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2014/09/07/21/52/city-438393_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )),
                        Flexible(
                            flex: 6,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Thailand',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '10 nights for two/all inclusive',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    '\$ 245.50',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, bottom: 12, right: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.0',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 8),
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2013/03/02/02/41/alley-89197_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )),
                        Flexible(
                            flex: 6,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Malaysia',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '9 nights for two/all inclusive',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    '\$ 345.50',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, bottom: 12, right: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '5.0',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 8),
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn.pixabay.com/photo/2017/01/28/02/24/japan-2014618_960_720.jpg'),
                                      fit: BoxFit.cover)),
                            )),
                        Flexible(
                            flex: 6,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Singapore',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '8 nights for two/all inclusive',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    '\$ 445.50',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, bottom: 12, right: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 8),
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/3620303/pexels-photo-3620303.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                                      fit: BoxFit.cover)),
                            )),
                        Flexible(
                            flex: 6,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'England',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '7 nights for two/all inclusive',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    '\$ 245.50',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, bottom: 12, right: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.4',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 8),
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/7902909/pexels-photo-7902909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                                      fit: BoxFit.cover)),
                            )),
                        Flexible(
                            flex: 6,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Spain',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '6 nights for two/all inclusive',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    '\$ 145.50',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, bottom: 12, right: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.3',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 4,
        child: Container(
          height: 64,
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.green,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.credit_card,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
