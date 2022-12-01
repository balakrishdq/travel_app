import 'package:flutter/material.dart';
import 'package:travel_app/widgets/search_screen/ticket_card.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/search-screen';
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
              padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    maxRadius: 35,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 120,
                left: 20,
                right: 20,
              ),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(1, 0),
                    )
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 5, left: 15),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      icon: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                        size: 32,
                      ),
                      hintText: 'Search Flights',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      child: TicketCard(
                        title: 'Business to New york',
                        departure: 'MCL',
                        arrival: 'NYC',
                        depCityname: 'Jakarta',
                        arrCityname: 'New York',
                        duration: '1h 55m',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TicketCard(
                    title: 'Vacation Trip',
                    departure: 'CBE',
                    arrival: 'CN',
                    depCityname: 'Coimbatore',
                    arrCityname: 'Chennai',
                    duration: '1h 00m',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TicketCard(
                    title: 'Business Trip to Vjy',
                    departure: 'MDU',
                    arrival: 'VJY',
                    depCityname: 'Madurai',
                    arrCityname: 'Vijayawada',
                    duration: '3h 30m',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TicketCard(
                    title: 'Vacation Tour',
                    departure: 'MSW',
                    arrival: 'PR',
                    depCityname: 'Moscow',
                    arrCityname: 'Paris',
                    duration: '5h 25m',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
