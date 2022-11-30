import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/booking_screen/dropdown_widget.dart';
import 'package:travel_app/widgets/flights_list/flight_card.dart';
import 'package:travel_app/widgets/flights_list/stack_part.dart';

class FlightList extends StatefulWidget {
  const FlightList({super.key});

  @override
  State<FlightList> createState() => _FlightListState();
}

class _FlightListState extends State<FlightList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackPart(),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95.0),
              child: DropdownWidget(),
            ),
            FlightCard(
              image: 'assets/images/air1.jpg',
              depTime: '10.00 Am',
              arrTime: '02.00 Am',
              estTime: '03.00 Am',
              price: '350',
            ),
            FlightCard(
              image: 'assets/images/air2.jpg',
              depTime: '08.00 Pm',
              arrTime: '12.00 Am',
              estTime: '01.00 Am',
              price: '490',
            ),
            FlightCard(
              image: 'assets/images/air3.jpg',
              depTime: '12.00 Am',
              arrTime: '06.00 Pm',
              estTime: '07.00 Pm',
              price: '780',
            ),
            FlightCard(
              image: 'assets/images/air4.jpg',
              depTime: '03.00 Am',
              arrTime: '07.00 Am',
              estTime: '09.00 Am',
              price: '760',
            ),
          ],
        ),
      ),
    );
  }
}
