import 'package:flutter/material.dart';

class Spotlight extends StatelessWidget {
  const Spotlight({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/Spotlight.png",
      "assets/Spotlight.png",
      "assets/Spotlight.png",
      "assets/Spotlight.png",
      "assets/Spotlight.png",
      "assets/Spotlight.png",
      "assets/Spotlight.png",
      "assets/Spotlight.png",
      "assets/Spotlight.png",
      "assets/Spotlight.png",
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Spotlight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Berita hiburan terhangat untuk anda!",
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(image.length, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(image[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "TIX ID Box Office (11 - 17 November)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_sharp,
                              color: Colors.grey,
                              size: 13,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "57",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.thumb_up,
                              color: Colors.grey,
                              size: 13,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 12),
                            ),
                            Icon(
                              Icons.thumb_down,
                              color: Colors.grey,
                              size: 13,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ]),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
