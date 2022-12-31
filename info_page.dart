import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height:10),
          const Center(
            child: Text("Made by :",
                style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 10),

          buildRoundedCard('Shashank Verma', 'T22458'),
          const SizedBox(height: 50),
          const Center(
            child: Text("Under the Guidance of",
            style: TextStyle(fontSize: 17)),
          ),
          const SizedBox(height: 10),
          buildRoundedCard('Dr. Shashank Pathak', 'Assistant Proffessor ,IIT Mandi'),


        ],
      ),
    );
  }
}
Widget buildRoundedCard(String abc, String def) => Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  child: Container(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          abc,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          def,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    ),
  ),
);