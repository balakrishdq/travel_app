import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/selecting_seats/single_seat.dart';

class EconomySeats extends StatelessWidget {
  const EconomySeats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Economy Class',
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
            SingleSeat(
              seatnum: 'E1',
            ),
            SingleSeat(
              seatnum: 'E2',
            ),
            Gap(10),
            SingleSeat(
              seatnum: 'E3',
            ),
            SingleSeat(
              seatnum: 'E4',
            ),
          ],
        ),
        Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleSeat(
              seatnum: 'E5',
            ),
            SingleSeat(
              seatnum: 'E6',
            ),
            Gap(10),
            SingleSeat(
              seatnum: 'E7',
            ),
            SingleSeat(
              seatnum: 'E8',
            ),
          ],
        ),
        Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleSeat(
              seatnum: 'E9',
            ),
            SingleSeat(seatnum: 'E10'),
            Gap(10),
            SingleSeat(
              seatnum: 'E11',
            ),
            SingleSeat(
              seatnum: 'E12',
            ),
          ],
        ),
      ],
    );
  }
}
