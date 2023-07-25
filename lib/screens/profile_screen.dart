import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/info_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.07),
              child: Text(
                'Profile',
                style: TextStyle(
                  fontFamily: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w900,
                  ).fontFamily,
                  fontSize: 45,
                  color: Colors.white,
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Icon(
                    Icons.account_circle,
                    size: 100,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const InfoTile(title: 'Name', info: 'Rohit Burra'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const InfoTile(title: 'Email', info: 'rburra@gitam.in'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const InfoTile(title: 'Phone', info: '9876543210'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/auth-screen');
                      },
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                          ).fontFamily,
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
