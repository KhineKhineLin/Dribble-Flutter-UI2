import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: Hero(
                  tag: 'img',
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/MMSMouteLouteNeeAMyo.jpg'),
                    )),
                  ),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.2,
              left: 24,
              right: 16,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'မုန့်လုပ်နည်း အမျိုးမျိုး',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'မာမာစိုး',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.grey,
                      ),
                      Spacer(),
                      Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text('148 Favorites'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                      'ကျောက်ကျောပါသော+မုန့်လုပ်နည်း+(၁၃)+နည်း၊+ကောက်ညှင်းဖြင့်ပြုလုပ်သော+မုန့်လုပ်နည်း+(၄၆)+နည်း၊+ဂျုံဖြင့်ပြုလုပ်သော+မုန့်လုပ်နည်း+(၄၅)+နည်း၊+ဆန်ကြမ်းဖြင့်ပြုလုပ်သော+မုန့်လုပ်နည်း+(၂၉)+နည်း၊+ယိုကဲ့သို့+ပြုလုပ်ရသည့်+မုန့်လုပ်နည်း+(၃၉)+နည်း၊+ဧည့်ခံမုန့်လုပ်နည်း+(၁၄)+နည်းပါရှိသည့်+စာအုပ်ဖြစ်သည်။')
                ],
              ))
        ],
      ),
    );
  }
}
