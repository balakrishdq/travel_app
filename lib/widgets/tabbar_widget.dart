// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  TabbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController? controller;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: DefaultTabController(
        length: 3,
        child: TabBar(
          unselectedLabelColor: Colors.black,
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
          controller: controller,
        ),
      ),
    );
  }
}
