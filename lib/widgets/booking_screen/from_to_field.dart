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
              color: Color(0xff00ABB3),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey.shade700,
                width: 3.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey.shade700,
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
                color: Colors.blueGrey.shade700,
                width: 3.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey.shade700,
                width: 3.0,
              ),
            ),
            prefixIcon: Icon(
              Icons.flight_land,
              color: Color(0xff00ABB3),
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
