import 'package:flutter/material.dart';

class TheaterList extends StatelessWidget {
  const TheaterList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> theaters = [
      "AEON MALL JGC CGV",
      "AEON MALL TANJUNG BARAT XXI",
      "AGORA MALL IMAX",
      "AGORA MALL PREMIERE",
      "AGORA MALL XXI",
      "ARION XXI",
      "ARTHA GADING XXI",
      "BASSURA XXI"
    ];

    return Column(
      children: List.generate(theaters.length, (index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 50,
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.star_border_rounded,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  theaters[index],
                  style: const TextStyle(fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Tambahkan logika ketika ikon ditekan
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(theaters[index]),
                        content: const Text("Stok Tiket Tidak tersedia"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Tutup"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Icon(
                  Icons.arrow_right,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
