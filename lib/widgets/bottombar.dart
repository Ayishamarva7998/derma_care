import 'package:dermacare/wishlist_screen.dart';
import 'package:dermacare/cart_screen.dart';
import 'package:dermacare/home_screen.dart';
import 'package:dermacare/search_screen.dart';
import 'package:flutter/material.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int myindex = 0;

  final pages = [
    Home_Screen(),
    Search_Screen(),
     Cart_Screen(),
    wishlist_screen()

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: pages[myindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 123, 19, 61),
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 24, 30, 41),
                icon: Icon(
                  Icons.home,
                  color: myindex == 0
                      ? const Color.fromARGB(255, 123, 19, 61)
                      : Colors.grey,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 24, 30, 41),
                icon: Icon(
                  Icons.search,
                  color: myindex == 1
                      ? const Color.fromARGB(255, 123, 19, 61)
                      : Colors.grey,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 24, 30, 41),
                icon: Icon(
                  Icons.local_mall,
                  color: myindex == 2
                      ? const Color.fromARGB(255, 123, 19, 61)
                      : Colors.grey,
                ),
                label: 'Details'),
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 24, 30, 41),
                icon: Icon(
                  Icons.favorite,
                  color: myindex == 3
                      ? const Color.fromARGB(255, 123, 19, 61)
                      : Colors.grey,
                ),
                label: 'Cart'),
          ]),
    ));
  }
}
