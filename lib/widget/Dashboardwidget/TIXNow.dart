import 'package:flutter/material.dart';

class Tixnow extends StatelessWidget {
  const Tixnow({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/TomCruise.png',
      'assets/TIXNow1.png',
      'assets/TIXNow2.png',
      'assets/TIXNow3.png',
      'assets/TIXNow3.png',
      'assets/TIXNow3.png',
    ];

    List<String> TextTIXNow = [
      "Media di hebohkan dengan perjalanan GOAT sepakbola menuju 'Piala Dunia 2022 QATAR'",
      "Tom Cruise Rilis Trailer 'Mission:Impossible 8 The Final Reckoning'",
      "Perilisan panjang kini telah datang 'Pacific Crim 3'",
      "Rekor Phzin memenangkan kejuaran FC PRO 24",
      "Rekor Verjgang memenangkan kejuaran Electronic World Cup division FC24",
      "Mulai hari ini TIX ID akan berkolaborasi dengan artis ternama"
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                "Sedang Tayang",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "Semua",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.arrow_circle_right),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Update berita terbaru seputar dunia film",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(image.length, (index) {
              return Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          image[index],
                          width: 90,
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Text(
                                TextTIXNow[index],
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.remove_red_eye_sharp,
                                    color: Colors.grey, size: 13),
                                SizedBox(width: 2),
                                Text("2M", style: TextStyle(fontSize: 12)),
                                SizedBox(width: 6),
                                Icon(Icons.thumb_up,
                                    color: Colors.grey, size: 13),
                                SizedBox(width: 2),
                                Text("1.9M", style: TextStyle(fontSize: 12)),
                                Icon(Icons.thumb_down,
                                    color: Colors.grey, size: 13),
                                SizedBox(width: 2),
                                Text("300k", style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              margin: EdgeInsets.only(bottom: 50),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Text(
                                "News",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            const Text(
                              "3 Hari lalu",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0.5,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    )
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
