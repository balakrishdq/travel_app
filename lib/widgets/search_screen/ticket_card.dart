// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:gap/gap.dart';

class TicketCard extends StatelessWidget {
  final String title;
  final String departure;
  final String arrival;
  final String depCityname;
  final String arrCityname;
  final String duration;
  const TicketCard({
    Key? key,
    required this.title,
    required this.departure,
    required this.arrival,
    required this.depCityname,
    required this.arrCityname,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe6e6e6),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 3,
                spreadRadius: 0.5,
                offset: Offset(0, 1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Gap(10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      departure,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.amber,
                      ),
                    ),
                    Dash(
                      direction: Axis.horizontal,
                      length: 70,
                    ),
                    Icon(
                      Icons.flight_outlined,
                      color: Colors.black,
                    ),
                    Dash(
                      direction: Axis.horizontal,
                      length: 70,
                    ),
                    Text(
                      arrival,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                ),
                Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      depCityname,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      duration,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      arrCityname,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
