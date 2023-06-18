import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:foodsapp/Screens/theme.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Foods App',
            style: poppinsTextStyle.copyWith(
              color: blackColor,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
