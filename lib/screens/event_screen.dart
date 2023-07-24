import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/event.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  static const routeName = '/event-screen';

  @override
  Widget build(BuildContext context) {
    final event = ModalRoute.of(context)!.settings.arguments as Event;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          event.title,
          style: TextStyle(
            fontSize: 20,
            fontFamily: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ).fontFamily,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF414141),
              Color(0xFF000000),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(event.image2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  event.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w900,
                    ).fontFamily,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const Icon(
                      Icons.date_range,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      event.date,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                        ).fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_pin,
                      color: Colors.white,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      event.location,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                        ).fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  event.description,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.95,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                      ).fontFamily,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
