import 'package:flutter/material.dart';

import '../widget/Dashboardwidget/city.dart';
import '../widget/TheaterWidget/FavoriteTeather.dart';
import '../widget/TheaterWidget/TheaterList.dart';

class Theater extends StatelessWidget {
  const Theater({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            city(),
            FavoriteTheater(),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            TheaterList()
          ],
        ),
      ),
    );
  }
}