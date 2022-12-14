import 'package:flutter/material.dart';
import 'package:travel_app/screens/search_screen.dart';
import 'package:travel_app/widgets/boarding_screen/flight_ticket.dart';

class BoardingScreen extends StatefulWidget {
  static const routeName = '/boarding-screen';
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/backgroundImage.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 33,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                      maxRadius: 35,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 100, top: 100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.shade700,
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: Offset(1, 0),
                      )
                    ]),
                child: Text(
                  'Boarding Pass',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: FlightTicket(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SearchScreen.routeName);
                },
                child: Text('Download Ticket'),
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
