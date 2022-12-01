import 'package:flutter/material.dart';
import 'package:travel_app/screens/flight_book.dart';
import 'package:travel_app/screens/search_screen.dart';
import 'package:travel_app/widgets/search_screen/ticket_card.dart';

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
        scaffoldBackgroundColor: Color(0xFFe6e6e6),
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: const FlightBook(),
    );
  }
}
