import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String imageString;
  const EventCard({super.key, required this.imageString});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 50, right: 50, bottom: 50),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        image: DecorationImage(
          image: NetworkImage(imageString),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
