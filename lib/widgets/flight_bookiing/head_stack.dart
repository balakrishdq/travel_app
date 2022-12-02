import 'package:flutter/material.dart';
import 'package:travel_app/widgets/booking_screen/title_and_profile.dart';

class HeadStack extends StatelessWidget {
  const HeadStack({super.key});

  @override
  Widget build(BuildContext context) {
    TabController? tabController;
    return Container(
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 33,
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
            ),
            child: Container(
              child: TitleAndProfile(headline: "Book your\nFlight"),
            ),
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
                  controller: tabController,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
