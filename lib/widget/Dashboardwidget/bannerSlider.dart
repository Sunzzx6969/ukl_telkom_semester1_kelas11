import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _pageController = PageController();
  final int _totalPages = 8;
  int _currentPage = 0;
  int order = 0;

  final List<String> _imagePaths = [
    "assets/banner0.png",
    "assets/banner1.png",
    "assets/banner2.png",
    "assets/banner3.png",
    "assets/banner0.png",
    "assets/banner1.png",
    "assets/banner2.png",
    "assets/banner3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          child: PageView(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: List.generate(
              _totalPages,
              (index) => Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(_imagePaths[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.only(top: 135),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _totalPages,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                height: 8.0,
                width: 8.0,
                decoration: BoxDecoration(
                  color: _currentPage == index ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}