import 'package:flutter/material.dart';

import 'pages/MyTicket.dart';
import 'pages/Theater.dart';
import 'pages/Ticket.dart';
import 'pages/dashboard.dart';
import 'pages/loginPage.dart';
import 'widget/CustomAppBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001a3c),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/splashScreen.png"),
              const SizedBox(height: 20),
              const Text(
                "TIX VIP, Lebih seru, Koin Melimpah, Dapat Hadiah!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "Gabung TIX VIP dan kumpulkan koin untuk mendapatkan hadiah dan diskon.",
                style: TextStyle(
                    color: Color.fromARGB(255, 219, 213, 89), fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const dashBoard(),
    const Theater(),
    const Ticket(),
    const Myticket(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 2 ? null : const CustomAppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF001a3c),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Bioskop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Tiket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Tiketku',
          ),
        ],
      ),
    );
  }
}
