import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_intro_slider/page/homepage.dart';
import 'package:tutorial_intro_slider/page/profile.dart';

class exploree extends StatelessWidget {
  const exploree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFF18243C),
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.explore),
            label: 'Explore',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          List<Widget> pages = [
            homee(),
            exploree(),
            profile(),
          ];

          // Navigasi ke halaman sesuai dengan index yang di-tap
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => pages[index]),
          );
        },
      ),
    );
  }
}
