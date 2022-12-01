import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/selecting_seats/business_seats.dart';
import 'package:travel_app/widgets/selecting_seats/economy_seats.dart';
import 'package:travel_app/widgets/selecting_seats/flight_seat_selection.dart';
import 'package:travel_app/widgets/selecting_seats/single_seat.dart';

class SelectingSeats extends StatefulWidget {
  const SelectingSeats({super.key});

  @override
  State<SelectingSeats> createState() => _SelectingSeatsState();
}

class _SelectingSeatsState extends State<SelectingSeats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
        title: Text(
          'Select Seats',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Gap(10),
            FlightSeatSelection(),
            Gap(10),
            BusinessSeats(),
            Gap(30),
            EconomySeats(),
          ],
        ),
      ),
    );
  }
}
