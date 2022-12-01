import 'package:flutter/material.dart';
import 'package:travel_app/screens/boarding_screen.dart';
import 'package:travel_app/screens/booking_screen.dart';
import 'package:travel_app/screens/flight_book.dart';
import 'package:travel_app/screens/flight_list.dart';
import 'package:travel_app/screens/payment_screen.dart';
import 'package:travel_app/screens/search_screen.dart';
import 'package:travel_app/screens/selecting_seats.dart';
import 'package:travel_app/screens/welcome_screen.dart';

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
      initialRoute: '/',
      routes: {
        '/': (ctx) => WelcomeScreen(),
        BookingScreen.routeName: (context) => BookingScreen(),
        FlightList.routeName: (context) => FlightList(),
        FlightBook.routeName: (context) => FlightBook(),
        SelectingSeats.routeName: (context) => SelectingSeats(),
        PaymentScreen.routeName: (context) => PaymentScreen(),
        BoardingScreen.routeName: (context) => BoardingScreen(),
        SearchScreen.routeName: (context) => SearchScreen(),
      },
    );
  }
}
