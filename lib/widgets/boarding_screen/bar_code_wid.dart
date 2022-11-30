import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarCodeWid extends StatelessWidget {
  const BarCodeWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BarcodeWidget(
        data: 'OPBAVTUIOPQZ',
        style: TextStyle(
          letterSpacing: 2,
          fontWeight: FontWeight.w500,
        ),
        barcode: Barcode.code128(),
        height: 70,
      ),
    );
  }
}
