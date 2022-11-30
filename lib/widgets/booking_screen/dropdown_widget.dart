import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String? chosenValue;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'sort by',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 19,
            ),
          ),
          Gap(10),
          Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 0.5,
                    color: Colors.white,
                    offset: Offset(0, 1),
                  )
                ]),
            child: DropdownButton<String>(
              focusColor: Colors.white,
              value: chosenValue,
              //elevation: 5,
              style: TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              items: <String>[
                'Highest Price',
                'Economy',
                'Student Pass',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: Text(
                "Highest Price",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (value) {
                chosenValue = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
