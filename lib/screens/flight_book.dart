import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/flight_bookiing/quantity_style.dart';
import 'package:travel_app/widgets/search_screen/ticket_card.dart';

import '../widgets/booking_screen/title_and_profile.dart';

class FlightBook extends StatefulWidget {
  const FlightBook({super.key});

  @override
  State<FlightBook> createState() => _FlightBookState();
}

class _FlightBookState extends State<FlightBook> {
  TabController? _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/backgroundImage.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: TitleAndProfile(headline: "Book your\nFlight"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: Container(
                    height: 30,
                    width: 260,
                    child: DefaultTabController(
                      length: 2,
                      child: TabBar(
                        indicatorColor: Colors.amber,
                        indicatorSize: TabBarIndicatorSize.label,
                        unselectedLabelColor: Colors.white,
                        indicatorWeight: 3,
                        labelColor: Colors.green,
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        tabs: [
                          Tab(
                            text: 'One Way',
                          ),
                          Tab(
                            text: 'Round Trip',
                          ),
                        ],
                        controller: _tabController,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TicketCard(
              title: 'Business to New york',
              departure: 'MCL',
              arrival: 'NYC',
              depCityname: 'Jakarta',
              arrCityname: 'New York',
              duration: '1h 55m',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(30),
              Text(
                'Departure',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
              Gap(100),
              Text(
                'Adults',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ],
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.amber,
                    ),
                    Text(
                      '22 Nov 2022',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              QuantityStyle(
                icon: Icons.man,
              ),
            ],
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(30),
              Text(
                'Children',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
              Gap(120),
              Text(
                'Infants',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ],
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              QuantityStyle(
                icon: Icons.child_care,
              ),
              QuantityStyle(
                icon: Icons.child_friendly,
              )
            ],
          ),
          Gap(20),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Cabin',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Economy',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Gap(30),
                  Container(
                    width: 120,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Business',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Gap(30),
                  Container(
                    width: 120,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'First',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Search Flight'),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
