import 'package:flutter/material.dart';

class NowAiring extends StatelessWidget {
  const NowAiring({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/FilmCover.png",
      "assets/FilmCover1.png",
      "assets/FilmCover2.png",
      "assets/FilmCover3.png",
      "assets/FilmCover4.png",
      "assets/FilmCover.png",
      "assets/FilmCover1.png",
      "assets/FilmCover2.png",
      "assets/FilmCover3.png",
      "assets/FilmCover4.png",
      "assets/FilmCover.png",
      "assets/FilmCover1.png",
      "assets/FilmCover2.png",
      "assets/FilmCover3.png",
      "assets/FilmCover4.png",
      "assets/FilmCover.png",
      "assets/FilmCover1.png",
    ];

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Color.fromARGB(255, 203, 212, 218)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(width: 10),
              Icon(Icons.arrow_circle_right),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildFilterButton("Semua Film"),
                  const SizedBox(width: 10),
                  _buildFilterButton("XXI"),
                  const SizedBox(width: 10),
                  _buildFilterButton("CGV"),
                  const SizedBox(width: 10),
                  _buildFilterButton("Cinépolis"),
                  const SizedBox(width: 10),
                  _buildFilterButton("Watchlist"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 550,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(image.length, (index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            height: 400,
                            child: Image.asset(
                              image[index],
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: 400,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Center(
                            child: Text(
                              "BILA ESOK IBU TIADA",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Film ini dapat rating ⭐9,2 dari penonton lho! Harus ditonton nih",
                              style: TextStyle(fontSize: 13),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterButton(String label) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        side: BorderSide(color: const Color(0xFF001a3c)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
