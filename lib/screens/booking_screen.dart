import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/title_and_profile.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: TitleAndProfile(headline: "Let's book your\nFlight"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 20),
            child: Container(
              height: 330,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 1,
                      color: Colors.white,
                      offset: Offset(0, 1))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
