import 'package:flutter/material.dart';

// --- Battery Voltage Card Widget ---
class BatteryVoltageCard extends StatelessWidget {
  double? width;
  BatteryVoltageCard({this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 190,
      height: 100,
      // padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        // color: Colors.grey[300],
        gradient: const LinearGradient(
          colors: [
            Color(0xFFcedbec),
            Color(0xFFedf3fc),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.0, 1.0],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '12V',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'BATTERY VOLTAGE',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// --- State of Charge Card Widget ---
class StateOfChargeCard extends StatelessWidget {
  const StateOfChargeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              children: [
                TextSpan(text: '4'),
                TextSpan(
                  text: '56',
                  style: TextStyle(color: Colors.greenAccent),
                ),
                TextSpan(text: '%'),
              ],
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'STATE OF CHARGE',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
