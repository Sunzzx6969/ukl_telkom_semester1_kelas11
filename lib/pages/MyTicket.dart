import 'package:flutter/material.dart';
import 'package:ukl_telkom_semester1_kelas11/widget/Dashboardwidget/city.dart';

class Myticket extends StatelessWidget {
  const Myticket({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/Gladiator.png",
      "assets/RedOne.png",
    ];

    List<String> Title = ["GLADIATOR II", "RED ONE"];

    List<String> Age = ["D17+", "R13+"];

    List<String> genre = ["Action, Adventure", "Action, Adventure"];

    List<String> rating = ["9.5", "9.3"];

    return Scaffold(
      body: Column(
        children: [
          const city(),
          Column(
            children: List.generate(image.length, (index) {
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      image[index],
                      width: index == 1 ? 200 : 190,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(Title[index],
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 180, 180, 180),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                Age[index],
                                style: const TextStyle(fontSize: 10),
                              ),
                            ),
                            Text(
                              genre[index],
                              style: const TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const SizedBox(width: 4),
                            Text(
                              rating[index],
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
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