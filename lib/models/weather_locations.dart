import 'package:flutter/material.dart';

class WeatherLocation {
  final String city;
  final String dateTime;
  final String temparature;
  final String weatherType;
  final String iconUrl;
  final int wind;
  final int rain;
  final int humidity;

  WeatherLocation({
    required this.city,
    required this.dateTime,
    required this.temparature,
    required this.weatherType,
    required this.iconUrl,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final locationList = [
  WeatherLocation(
    city: 'Bishkek',
    dateTime: '07:50 PM — Monday, 9 Mar 2022',
    temparature: '9\u2103',
    weatherType: 'Night',
    iconUrl: 'assets/moon.svg',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),
  WeatherLocation(
    city: 'London',
    dateTime: '02:20 PM — Monday, 9 Mar 2022',
    temparature: '15\u2103',
    weatherType: 'Cloudy',
    iconUrl: 'assets/cloudy.svg',
    wind: 8,
    rain: 7,
    humidity: 82,
  ),
  WeatherLocation(
    city: 'Almaty',
    dateTime: '09:20 AM — Monday, 9 Mar 2022',
    temparature: '5\u2103',
    weatherType: 'Sunny',
    iconUrl: 'assets/sun.svg',
    wind: 5,
    rain: 15,
    humidity: 61,
  ),
  WeatherLocation(
    city: 'San Jose',
    dateTime: '01:20 AM — Tuesday, 9 Mar 2020',
    temparature: '15\u2103',
    weatherType: 'Rainy',
    iconUrl: 'assets/rain.svg',
    wind: 20,
    rain: 70,
    humidity: 91,
  ),
];
