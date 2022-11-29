import 'package:flutter/material.dart';

class SwapVert extends StatelessWidget {
  const SwapVert({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 270,
      left: 260,
      child: CircleAvatar(
        backgroundColor: Colors.green,
        maxRadius: 30,
        child: Icon(
          Icons.swap_vert,
          size: 35,
        ),
      ),
    );
  }
}
