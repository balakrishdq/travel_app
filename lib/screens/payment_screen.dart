import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/screens/boarding_screen.dart';
import 'package:travel_app/widgets/booking_screen/card_with_data.dart';
import 'package:travel_app/widgets/flights_list/flight_card.dart';
import 'package:travel_app/widgets/payment_screen/paying_platforms.dart';

class PaymentScreen extends StatefulWidget {
  static const routeName = '/payment-screen';
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
        title: Text(
          'Checkout',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            PayingPlatform(),
            Gap(30),
            CardWithData(),
            Gap(30),
            FlightCard(
              image: 'assets/images/air1.jpg',
              depTime: '10.00 Am',
              arrTime: '02.00 Am',
              estTime: '03.00 Am',
              price: '350',
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Container(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(BoardingScreen.routeName);
                  },
                  child: Text('Proceed'),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.green,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
