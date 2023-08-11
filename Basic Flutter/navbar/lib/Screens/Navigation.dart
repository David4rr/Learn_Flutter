// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:navbar/Screens/Dasboard.dart';
import 'package:navbar/Screens/User.dart';
import 'package:navbar/Theme.dart';


class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _bottomNavCurrentIndex = 0;
  final List<Widget> _container = [
    const Dashboard(),
    const User(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex], //* Bagian ini untuk custom navbarnya, sudah saya buat mirip figma!
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(size: 32),
        unselectedIconTheme: const IconThemeData(size: 32),
        selectedItemColor: bluetogreenColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem( //* Bagian ini untuk vustom icon dan bg iconya        
            activeIcon: Container(
              decoration: BoxDecoration(
                color: bluetogreenColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.home,
                color: whiteColor,
              ),
            ),
            icon: Icon(
              Icons.home,
              color: dark50Color,
            ),
            label: 'Dashboard',
          ), 
          //! Bagian ini bisa ditambahin imagenya sudah ada di assets beserta nama file yang saya buat.
          // BottomNavigationBarItem(
          //   activeIcon: Container(
          //     decoration: BoxDecoration(
          //       color: bluetogreenColor,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     padding: const EdgeInsets.all(8),
          //     child: Image.asset(
          //       'assets/icon_breeding.png',
          //       width: 32,
          //       height: 32,
          //       color: whiteColor,
          //     ),
          //   ),
          //   icon: Image.asset(
          //     'assets/icon_breeding.png',
          //     width: 32,
          //     height: 32,
          //     color: dark50Color,
          //   ),
          //   label: 'Breeding',
          // ),
          // BottomNavigationBarItem(
          //   activeIcon: Container(
          //     decoration: BoxDecoration(
          //       color: bluetogreenColor,
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     padding: const EdgeInsets.all(8),
          //     child: Image.asset(
          //       'assets/icon_domba_saya.png',
          //       width: 32,
          //       height: 32,
          //       color: whiteColor,
          //     ),
          //   ),
          //   icon: Image.asset(
          //     'assets/icon_domba_saya.png',
          //     width: 32,
          //     height: 32,
          //     color: dark50Color,
          //   ),
          //   label: 'Domba Saya',
          // ),
          BottomNavigationBarItem(
            activeIcon: Container(
              decoration: BoxDecoration(
                color: bluetogreenColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.person,
                color: whiteColor,
              ),
            ),
            icon: Icon(
              Icons.person,
              color: dark50Color,
            ),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
