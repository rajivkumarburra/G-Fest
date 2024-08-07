import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryCard extends StatelessWidget {
  final String title;
  final String price;
  final String date;
  final String id;
  const HistoryCard(
      {super.key,
      required this.title,
      required this.price,
      required this.date,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 110,
      width: MediaQuery.of(context).size.width * 0.95,
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
      child: Padding(
        padding: const EdgeInsets.only(top: 6, left: 8, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                ).fontFamily,
              ),
            ),
            Text(
              'ID: $id',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
            ),
            Text(
              'Price: $price',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
            ),
            Text(
              'Date: $date',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
