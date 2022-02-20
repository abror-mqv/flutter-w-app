import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

// class WeatherApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Weather App"),
//       ),
//       body: Container(
//         child: Stack(
//           children: [
//             Image.asset('assets/night.jpg', fit: BoxFit.cover)
//           ],
//         ),
//       )
//       )),
//     );
//   }
// }

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 30, color: Colors.white)),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: SvgPicture.asset(
                'assets/menu.svg',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Container(
            child: Stack(children: [
          Image.asset("../assets/night.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity)
        ])));
  }
}
