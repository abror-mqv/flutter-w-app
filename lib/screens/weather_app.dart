import 'package:flutter/material.dart';
import 'package:fp0/models/weather_locations.dart';
import 'package:fp0/widgets/single_weather_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import "./weather_app.dart";

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text("Abror's weather app"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: GestureDetector(
                onTap: () => print('Menu Clicked!'),
                child: SvgPicture.asset(
                  'assets/menu.svg',
                  height: 30,
                  width: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Container(
            child: Stack(children: [
          Image.asset(
            'assets/night.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            margin: EdgeInsets.only(top: 140, left: 15),
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 12,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
            ]),
          ),
          PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: locationList.length,
              itemBuilder: (ctx, i) => SingleWeather(i)),
        ])));
  }
}
