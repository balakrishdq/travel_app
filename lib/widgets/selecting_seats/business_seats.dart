import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/selecting_seats/single_seat.dart';

class BusinessSeats extends StatelessWidget {
  const BusinessSeats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Business Class',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber,
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'A1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SingleSeat(
              seatnum: 'A2',
            ),
            Gap(10),
            SingleSeat(
              seatnum: 'A3',
            ),
            SingleSeat(
              seatnum: 'A4',
            ),
          ],
        ),
        Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleSeat(
              seatnum: 'B1',
            ),
            SingleSeat(
              seatnum: 'B2',
            ),
            Gap(10),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber,
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'B3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SingleSeat(
              seatnum: 'B4',
            ),
          ],
        ),
        Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleSeat(
              seatnum: 'C1',
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'C2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Gap(10),
            SingleSeat(
              seatnum: 'C3',
            ),
            SingleSeat(
              seatnum: 'C4',
            ),
          ],
        ),
      ],
    );
  }
}
