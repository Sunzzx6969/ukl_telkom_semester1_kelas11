import 'package:flutter/material.dart';

class city extends StatelessWidget {
  const city({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      color: Color.fromARGB(255, 231, 231, 231),
      child: const Row(
        children: [
          Icon(
            Icons.location_on,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "JAKARTA",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 98, 98, 98)),
          ),
          Spacer(),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}