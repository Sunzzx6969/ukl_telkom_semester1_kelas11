import 'package:flutter/material.dart';

class FavoriteTheater extends StatelessWidget {
  const FavoriteTheater({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.location_city,
            size: 60,
            color: Color(0xFF001a3c),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tandai bioskop Favoritmu!",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: const Text(
                  "Bioskop favoritmu akan berada paling atas pada daftar dan pada jadwal film.",
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 13),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF001a3c), // Warna biru
                  foregroundColor: Colors.white, // Warna teks putih
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Color(0xFF001a3c)),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 5), // Padding tombol
                ),
                onPressed: () {
                  // Logika ketika tombol ditekan
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Di terima")),
                  );
                },
                child: const Text(
                  "Mengerti",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
