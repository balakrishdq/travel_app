import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardWithData extends StatelessWidget {
  const CardWithData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Container(
        height: 270,
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
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(
                        'assets/images/flight1.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.brown,
                              blurRadius: 2,
                              spreadRadius: 0.5,
                              offset: Offset(0, 1),
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "\$${5799}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Gap(1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flight Lufthansa',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'HJB-JKM',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.timer_outlined,
                      color: Colors.green,
                    )),
                    TextSpan(
                      text: '10.00 AM-12.00 AM',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    )
                  ])),
                  SizedBox(
                      height: 35,
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Book now',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.green,
                              ),
                            ],
                          )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}