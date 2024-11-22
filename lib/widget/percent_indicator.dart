import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentIndicator extends StatefulWidget {
  const PercentIndicator({super.key});

  @override
  State<PercentIndicator> createState() => PercentIndicatorState();
}

class PercentIndicatorState extends State<PercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 120.0,
      animation: true,
      animationDuration: 1200,
      lineWidth: 20.0,
      percent: 0.8,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "80%",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 70,
            ),
          ),
          Text(
            "SoC",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Color(0xffd0e7f8),
      arcType: ArcType.FULL,
      arcBackgroundColor: Color(0xffa4adbe),
    );
  }
}
