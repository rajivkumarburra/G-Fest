import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoTile extends StatelessWidget {
  final String title;
  final String info;
  const InfoTile({super.key, required this.title, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width * 0.95,
      padding: const EdgeInsets.only(top: 6, left: 10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF414141),
            Color(0xFF000000),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
              ).fontFamily,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Text(
            info,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: GoogleFonts.montserrat().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
