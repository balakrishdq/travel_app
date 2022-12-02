// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class QuantityStyle extends StatelessWidget {
  final IconData icon;
  const QuantityStyle({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 140,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 2,
          )
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            maxRadius: 15,
            child: Icon(
              Icons.horizontal_rule,
              color: Colors.white,
            ),
          ),
          Icon(
            icon,
            size: 35,
          ),
          CircleAvatar(
            backgroundColor: Colors.blueGrey.shade700,
            maxRadius: 15,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
