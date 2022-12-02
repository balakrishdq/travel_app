import 'package:flutter/material.dart';
import 'package:travel_app/screens/selecting_seats.dart';
import 'package:travel_app/widgets/flight_bookiing/head_stack.dart';
import 'package:travel_app/widgets/flight_bookiing/journey_details.dart';
import 'package:travel_app/widgets/search_screen/ticket_card.dart';

class FlightBook extends StatefulWidget {
  static const routeName = '/flight-book';
  const FlightBook({super.key});

  @override
  State<FlightBook> createState() => _FlightBookState();
}

class _FlightBookState extends State<FlightBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadStack(),
          Container(
            padding: EdgeInsets.all(20),
            child: TicketCard(
              title: 'Business to New york',
              departure: 'MCL',
              arrival: 'NYC',
              depCityname: 'Jakarta',
              arrCityname: 'New York',
              duration: '1h 55m',
            ),
          ),
          JourneyDetails(),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SelectingSeats.routeName);
                },
                child: Text('Search Flight'),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.blueGrey.shade700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
