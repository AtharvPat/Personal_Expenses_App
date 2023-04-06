import 'package:flutter/material.dart';

class Bars extends StatelessWidget {
  final String lable;
  final double spendings;
  final double spendingPercent;

  Bars(this.lable, this.spendings, this.spendingPercent);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10,
          child: FittedBox(
              child: Text(
            '₹ ${spendings.toStringAsFixed(0)}',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height: 5),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPercent,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(
          lable,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
