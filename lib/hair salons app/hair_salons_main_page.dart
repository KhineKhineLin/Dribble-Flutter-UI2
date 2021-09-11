import 'package:flutter/material.dart';

class Shop {
  String name;
  String imgPath;
  double rate;
  Shop(this.name, this.imgPath, this.rate);
}

List<Shop> items = [
  Shop(
      'Danic Schaefer Hairstylist',
      'https://cdn.pixabay.com/photo/2015/07/07/11/36/haircut-834280_960_720.jpg',
      4.1),
  Shop(
      'Royalty Barbershop',
      'https://images.pexels.com/photos/1805600/pexels-photo-1805600.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      4.4),
  Shop(
      'Lookin\' Sharp Barber',
      'https://images.pexels.com/photos/3993447/pexels-photo-3993447.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      4.2),
  Shop(
      'Get Buzzed Barber',
      'https://images.pexels.com/photos/2061820/pexels-photo-2061820.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      3.8)
];

class HairSalonsMainPage extends StatefulWidget {
  const HairSalonsMainPage({Key? key}) : super(key: key);

  @override
  _HairSalonsMainPageState createState() => _HairSalonsMainPageState();
}

class _HairSalonsMainPageState extends State<HairSalonsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 12, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hair Salons',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.teal,
                  ),
                  Text(
                    'ASAP -- Prince George\'s Park',
                    style: TextStyle(
                        color: Colors.teal, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 180,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(items[index].imgPath),
                              fit: BoxFit.cover)),
                      padding: EdgeInsets.only(
                          left: 8, right: 8, top: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 42,
                            width: 84,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(32)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.white,
                                ),
                                Text(
                                  items[index].rate.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 180,
                            child: Text(
                              items[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
