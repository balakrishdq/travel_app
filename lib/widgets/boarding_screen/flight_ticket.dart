import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/boarding_screen/bar_code_wid.dart';
import 'package:travel_app/widgets/boarding_screen/mini_cards.dart';
import 'package:travel_app/widgets/boarding_screen/ticket_details.dart';
import 'package:travel_app/widgets/boarding_screen/ticket_head.dart';

class FlightTicket extends StatelessWidget {
  const FlightTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          height: 540,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 2,
                spreadRadius: 0.5,
              ),
            ],
          ),
          child: Column(
            children: [
              TicketHead(),
              Gap(20),
              MiniCards(),
              Gap(20),
              TicketDetails(),
              Gap(20),
              BarCodeWid(),
            ],
          ),
        ),
        Positioned(
          top: 160,
          child: CircleAvatar(
            backgroundColor: Color(0xffe6e6e6),
            minRadius: 18,
          ),
        ),
        Positioned(
          top: 160,
          right: 4,
          child: CircleAvatar(
            backgroundColor: Color(0xffe6e6e6),
            minRadius: 18,
          ),
        ),
        Positioned(
          bottom: 120,
          left: 4,
          child: CircleAvatar(
            backgroundColor: Color(0xffe6e6e6),
            minRadius: 18,
          ),
        ),
        Positioned(
          bottom: 120,
          right: 4,
          child: CircleAvatar(
            backgroundColor: Color(0xffe6e6e6),
            minRadius: 18,
          ),
        ),
      ],
    );
  }
}
