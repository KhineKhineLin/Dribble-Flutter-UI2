import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 16, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Spacer(),
                                Container(
                                  width: 52,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.pexels.com/photos/731022/pexels-photo-731022.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(color: Colors.white)),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hey, Khinekhinel',
                                style: GoogleFonts.handlee().copyWith(
                                    color: Colors.yellow,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Let\'s find you a dogsitter',
                                style: GoogleFonts.handlee().copyWith(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Container(
                                  height: 58,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: Container(
                                            margin: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: Center(
                                              child: Icon(
                                                Icons.filter_list,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Top rated dogsitters',
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          'View all',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.yellow),
                                        )
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 6,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, bottom: 16, top: 8),
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, idx) {
                                          return Container(
                                            width: 110,
                                            margin: EdgeInsets.only(right: 12),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  radius: 42,
                                                ),
                                                Text(
                                                  'Khin',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          );
                                        }),
                                  ))
                            ],
                          ))
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
