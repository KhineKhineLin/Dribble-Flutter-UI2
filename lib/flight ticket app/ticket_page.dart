import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 8,
                right: 24,
                top: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.keyboard_arrow_left),
                    Spacer(),
                    Text(
                      'Your Ticket',
                      style: GoogleFonts.montserrat(fontSize: 20),
                    ),
                    Spacer()
                  ],
                )),
            Positioned(
                left: 0,
                right: 0,
                top: 48,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, top: 16),
                          child: Text(
                            'Select Seats',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Expanded(flex: 28, child: Placeholder()),
                      Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Colors.indigoAccent,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Choosen',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Available',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Blocked',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                    ),
                                    Spacer()
                                  ],
                                ),
                              )),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 24, top: 8),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: MaterialButton(
                                        elevation: 8,
                                        color: Colors.indigo,
                                        onPressed: () {},
                                        child: Text(
                                          'Confirm',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              color: Colors.white),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Expanded(flex: 4, child: Container())
                    ],
                  ),
                )),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Row(
                    children: [],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
