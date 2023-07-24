import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.jpg'),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            colors: [
              Color(0xFF414141),
              Color(0xFF000000),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Text(
                'Welcome',
                style: TextStyle(
                  backgroundColor: Colors.black,
                  fontFamily: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w900,
                  ).fontFamily,
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'to',
                style: TextStyle(
                  backgroundColor: Colors.black,
                  fontFamily: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w900,
                  ).fontFamily,
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'G-Fest.',
                style: TextStyle(
                  backgroundColor: Colors.black,
                  fontFamily: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w900,
                  ).fontFamily,
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/auth-screen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontFamily: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w900,
                  ).fontFamily,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
