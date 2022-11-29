import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FromToField extends StatelessWidget {
  const FromToField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.flight_takeoff,
              color: Colors.green,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 3.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 3.0,
              ),
            ),
            hintText: 'From',
            labelText: 'London,NCD',
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Gap(30),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 3.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 3.0,
              ),
            ),
            prefixIcon: Icon(
              Icons.flight_land,
              color: Colors.green,
            ),
            hintText: 'To',
            labelText: 'Barstow,BSW',
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}
