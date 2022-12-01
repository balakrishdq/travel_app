import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/screens/booking_screen.dart';
import 'package:travel_app/screens/flight_list.dart';

class WelcomeScreen extends StatelessWidget {
  static const routName = '/';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/backgroundImage.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Find And Book\nA Great Experience',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade50,
                  ),
                ),
                Gap(20),
                Text(
                  'Going forward after a pandemic that\ndevastated the airline industry',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade50,
                  ),
                ),
                Gap(20),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: Text(
                      'Get Tickets',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(BookingScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey.shade700,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
