import 'package:flutter/material.dart';

import '../widget/Dashboardwidget/NowAiring.dart';
import '../widget/Dashboardwidget/Spotlight.dart';
import '../widget/Dashboardwidget/TIXNow.dart';
import '../widget/Dashboardwidget/bannerSlider.dart';
import '../widget/Dashboardwidget/city.dart';

class dashBoard extends StatelessWidget {
  const dashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const city(),
            const BannerSlider(),
            const SizedBox(height: 15),
            Image.asset(
              "assets/banner.png",
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(height: 15),
            const NowAiring(),
            const SizedBox(height: 20),
            const Divider(color: Colors.grey, thickness: 0.5),
            const SizedBox(height: 20),
            const Spotlight(),
            const SizedBox(height: 20),
            const Divider(color: Colors.grey, thickness: 0.5),
            const SizedBox(height: 20),
            const Tixnow(),
          ],
        ),
      ),
    );
  }
}
