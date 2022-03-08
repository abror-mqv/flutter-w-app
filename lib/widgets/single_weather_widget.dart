import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import './indicator.dart';

class SingleWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 150),
                    Text(
                      "Kolkata",
                      style:
                          GoogleFonts.lato(fontSize: 35, color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "01:02 AM - Thursday, 3 Mar 2022",
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "18\u2103",
                      style: GoogleFonts.lato(
                          fontSize: 85,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/moon.svg',
                          width: 34,
                          height: 34,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Night",
                          style: GoogleFonts.lato(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white30)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Wind",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "10",
                          style: GoogleFonts.lato(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "km/h",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Stack(
                          children: [
                            Container(
                                height: 5, width: 50, color: Colors.white30),
                            Container(
                                height: 5,
                                width: 10,
                                color: Colors.greenAccent),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Rain",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "2",
                          style: GoogleFonts.lato(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "%",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Stack(
                          children: [
                            Container(
                                height: 5, width: 50, color: Colors.white30),
                            Container(
                                height: 5,
                                width: 5,
                                color: Color.fromARGB(255, 255, 225, 0)),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Humidity",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "10",
                          style: GoogleFonts.lato(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "%",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Stack(
                          children: [
                            Container(
                                height: 5, width: 50, color: Colors.white30),
                            Container(
                                height: 5,
                                width: 10,
                                color: Color.fromARGB(255, 255, 0, 0)),
                          ],
                        )
                      ],
                    ),
                    Indicator()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
