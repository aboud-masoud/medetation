import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:meditation/screens/home_screen.dart';
import 'package:meditation/screens/profile_screen.dart';
import 'package:meditation/screens/session_screen.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  int selectedTabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7ADBAE),
      body: selectedTabBarIndex == 0
          ? const HomeScreen()
          : selectedTabBarIndex == 1
              ? const SessionScreen()
              : const ProfileScreen(),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: const Color(0xff444444),
        height: 45,
        activeColor: const Color(0xff1A7F72),
        cornerRadius: 0,
        items: const [
          TabItem(title: 'Home', icon: Icons.home),
          TabItem(title: 'Session', icon: Icons.list),
          TabItem(title: 'Profile', icon: Icons.person),
        ],
        onTap: (int i) {
          selectedTabBarIndex = i;
          setState(() {});
        },
      ),
    );
  }
}
