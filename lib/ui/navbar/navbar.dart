import 'package:flutter/material.dart';
import 'package:goodycricket/ui/navbar/homepage/home_page.dart';
import 'package:goodycricket/ui/navbar/matches/matches.dart';
import 'package:goodycricket/ui/navbar/more.dart';
import 'package:goodycricket/ui/navbar/news/news.dart';
import 'package:goodycricket/ui/navbar/video.dart';
class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> pages=[const HomePage(), const Matches(), const Video(), const News(), const More()];
  int currentIndex = 0;

  void tap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          tap(index);
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        // backgroundColor: Colors.green.shade600,
        showUnselectedLabels: true,
        items: const[
               BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home'),
               BottomNavigationBarItem(icon: Icon(Icons.sports_cricket), label: 'Matches'),
               BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: 'Video'),
               BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
               BottomNavigationBarItem(icon: Icon(Icons.more_vert_outlined), label: 'More'),

      ],
      ),
      body: pages[currentIndex],
    );
  }
}