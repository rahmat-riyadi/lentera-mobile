import 'package:flutter/material.dart';

class ProggresBar extends StatelessWidget {

  var widht;
  var value;
  var totalValue;

  ProggresBar({this.widht, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {

    var ratio = value / totalValue;

    return Stack(
      children: [
        Container(
          width: widht,
          height: 15,
          decoration: BoxDecoration(
            color: Color(0xFFC9C9C9),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 1, color: Color(0xFFEFEFEF)
            )
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: (widht * 0.95) * ratio,
          height: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: (ratio < 0.3) ? Colors.red : (ratio < 0.6) ? Colors.amber : Colors.green
          ),
        ),
        Container(
          width: widht,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 1, color: Color(0xFFEFEFEF)
            )
          ),
        ),
      ],
    );
  }
}