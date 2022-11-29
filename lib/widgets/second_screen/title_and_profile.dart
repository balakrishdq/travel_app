// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TitleAndProfile extends StatelessWidget {
  final String headline;
  const TitleAndProfile({
    Key? key,
    required this.headline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headline,
              style: TextStyle(
                fontSize: 30,
                color: Colors.grey.shade50,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
              maxRadius: 35,
            )
          ],
        ),
      ),
    );
  }
}
