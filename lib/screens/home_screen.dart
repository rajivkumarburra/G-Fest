import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/event.dart';
import '../widgets/event_card.dart';
import './event_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage('assets/images/back.jpg'), context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/back.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.07),
              child: Text(
                'Welcome.',
                style: TextStyle(
                  backgroundColor: Colors.black,
                  color: Colors.white,
                  fontFamily: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w900,
                  ).fontFamily,
                  fontSize: 45,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      'Events',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                        ).fontFamily,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GlowingOverscrollIndicator(
                      axisDirection: AxisDirection.right,
                      color: Colors.transparent,
                      child: PageView.builder(
                        itemCount: Event.events.length,
                        itemBuilder: (ctx, index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              EventScreen.routeName,
                              arguments: Event.events[index],
                            );
                          },
                          child: EventCard(
                            imageString: Event.events[index].imageURL,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
