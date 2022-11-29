import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/booking_screen/card_with_data.dart';
import 'package:travel_app/widgets/booking_screen/card_with_tabs.dart';
import 'package:travel_app/widgets/booking_screen/dropdown_widget.dart';
import 'package:travel_app/widgets/booking_screen/swap_vert.dart';
import 'package:travel_app/widgets/booking_screen/title_and_profile.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd9d9d9),
      body: Column(
        children: [
          Stack(
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
              CardWithTabs(),
              SwapVert(),
            ],
          ),
          Gap(20),
          DropdownWidget(),
          Gap(20),
          CardWithData(),
        ],
      ),
    );
  }
}
