import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/title_and_profile.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  TabController? _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: TitleAndProfile(headline: "Let's book your\nFlight"),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 120, horizontal: 20),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 0.5,
                        color: Colors.white,
                        offset: Offset(0, 1))
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: DefaultTabController(
                        length: 3,
                        child: TabBar(
                          unselectedLabelColor: Colors.blue,
                          indicator: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          tabs: [
                            Tab(
                              text: 'One-way',
                            ),
                            Tab(
                              text: 'Round-trip',
                            ),
                            Tab(
                              text: 'Multi-city',
                            ),
                          ],
                          controller: _tabController,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
