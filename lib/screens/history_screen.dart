import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_app/models/orders.dart';
import 'package:ticket_app/widgets/history_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

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
                'History',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      'Your Orders',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                        ).fontFamily,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Expanded(
                    child: GlowingOverscrollIndicator(
                      axisDirection: AxisDirection.down,
                      color: Colors.black12,
                      child: ListView.builder(
                        itemCount: Orders.orders.length,
                        itemBuilder: (context, index) {
                          return HistoryCard(
                            id: Orders.orders[index].id,
                            title: Orders.orders[index].title,
                            price: Orders.orders[index].price,
                            date: Orders.orders[index].date,
                          );
                        },
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
