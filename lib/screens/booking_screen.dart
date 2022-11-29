import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/card_with_tabs.dart';
import 'package:travel_app/widgets/dropdown_widget.dart';
import 'package:travel_app/widgets/swap_vert.dart';
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
          Gap(30),
          DropdownWidget(),
        ],
      ),
    );
  }
}
