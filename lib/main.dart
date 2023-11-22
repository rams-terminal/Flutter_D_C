import 'package:daily_challenge/day_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyChallenge());
}

class DailyChallenge extends StatelessWidget {
  const DailyChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DayOne(),
    );
  }
}
