// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FlightCard extends StatelessWidget {
  final String image;
  final String depTime;
  final String arrTime;
  final String estTime;
  final String price;
  const FlightCard({
    Key? key,
    required this.image,
    required this.depTime,
    required this.arrTime,
    required this.estTime,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 20),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 2,
            spreadRadius: 1,
            offset: Offset(0, 1),
          )
        ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Departure',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Gap(30),
                    Text(
                      'Arrive',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      depTime,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                    Gap(30),
                    Text(
                      arrTime,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Gap(10),
                Row(
                  children: [
                    Text(
                      'Estimation',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Gap(30),
                    Text(
                      'Price',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      estTime,
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                    Gap(30),
                    Text(
                      '\$${price}',
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
