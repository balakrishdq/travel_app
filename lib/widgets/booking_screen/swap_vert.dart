import 'package:flutter/material.dart';

class SwapVert extends StatelessWidget {
  const SwapVert({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 275,
      left: 260,
      child: CircleAvatar(
        backgroundColor: Colors.blueGrey.shade700,
        maxRadius: 25,
        child: Icon(
          Icons.swap_vert,
          color: Color(0xff00ABB3),
          size: 35,
        ),
      ),
    );
  }
}
