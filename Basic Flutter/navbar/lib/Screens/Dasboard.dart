// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const Center(
        child: Text('Ini Dashboard'),
      ),
    );
  }
}

//! Dibawah ini adalah code custom appbar yang saya buat, sudah sama seperti di figma!
//* Icon cart sudah ada di assets
// appBar: AppBar(
//         backgroundColor: whiteColor,
//         title: Text(
//           "Dashboard",
//           style: greyTextStyle.copyWith(
//             fontWeight: semiBold,
//             fontSize: 14,
//             letterSpacing: 0.1,
//           ),
//         ),
//         actions: [
//           IconButton(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             icon: Image.asset(
//               'assets/shopping_cart.png',
//               width: 20,
//               height: 20,
//             ),
//             onPressed: () {
//               // Aksi ketika ikon ditekan
//             },
//           ),
//         ],
//       ),
