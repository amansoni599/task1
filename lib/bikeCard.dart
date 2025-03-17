import 'package:flutter/material.dart';

// --- Bike Card Widget ---
class BikeCard extends StatelessWidget {
  const BikeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 340,
      decoration: BoxDecoration(
        color: const Color(0xFF44505e), // Dark grey background
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.greenAccent,
                        size: 16,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'ARMED',
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 24), // Spacer
            ],
          ),
          const SizedBox(height: 12),
          Image.asset(
            'assets/bike.png', // Replace with your actual image path
            height: 150,
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          const SizedBox(height: 12),
          const Text(
            '2024 DSR/X',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Row(
            children: [
              Text(
                'DUAL SPORT',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              Spacer(),
              Text(
                'VIN: 219479120142',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

// // --- Battery Voltage Card Widget ---
// class BatteryVoltageCard extends StatelessWidget {
//   const BatteryVoltageCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.grey[300],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: const Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             '12V',
//             style: TextStyle(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           SizedBox(height: 4),
//           Text(
//             'BATTERY VOLTAGE',
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.grey,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
