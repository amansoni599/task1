import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  double? width;
  SmallCard({this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 190,
      height: 100,
      // padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFcedbec),
            Color(0xFFedf3fc),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.0, 1.0],
        ),
        // color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              children: [
                WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.only(right: 4.0),
                    child: Icon(
                      Icons.bolt,
                      color: Colors.greenAccent,
                      size: 36,
                    ),
                  ),
                ),
                TextSpan(text: '56'),
                TextSpan(
                  text: '%',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'STATE OF CHARGE',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
