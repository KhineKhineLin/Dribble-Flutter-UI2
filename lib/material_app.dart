import 'package:dribble_flutter_ui2/flight%20ticket%20app/ticket_page.dart';

import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicketPage(),
    );
  }
}
