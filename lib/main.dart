import 'package:flutter/material.dart';
import 'package:travel_app/screens/booking_screen.dart';
import 'package:travel_app/screens/flight_list.dart';
import 'package:travel_app/widgets/flights_list/flight_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: const FlightList(),
    );
  }
}
