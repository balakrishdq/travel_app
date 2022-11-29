import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travel_app/widgets/second_screen/from_to_field.dart';
import 'package:travel_app/widgets/second_screen/tabbar_widget.dart';

class CardWithTabs extends StatelessWidget {
  const CardWithTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120, right: 20, left: 20),
      child: Container(
        height: 290,
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
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              TabbarWidget(),
              Gap(30),
              FromToField(),
            ],
          ),
        ),
      ),
    );
  }
}
