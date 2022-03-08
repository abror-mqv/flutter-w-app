import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Indicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Text(
          "Rain",
          style: GoogleFonts.lato(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          "10",
          style: GoogleFonts.lato(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          "%",
          style: GoogleFonts.lato(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Stack(
          children: [
            Container(height: 5, width: 50, color: Colors.white30),
            Container(
                height: 5, width: 10, color: Color.fromARGB(255, 255, 0, 0)),
          ],
        )
      ],
    ));
  }
}
