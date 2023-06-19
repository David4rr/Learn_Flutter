import 'package:flutter/material.dart';
import 'package:foodsapp/Models/menu.dart';
import 'package:foodsapp/Widgets/menu_card.dart';
import 'package:foodsapp/theme.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, David Arrozaqi',
                style: poppinsTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: blackColor,
                ),
              ),
              Text(
                'Selamat Datang, di Burger Jawa',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: greyColor,
                ),
              ),
              Text(
                'Karna Jawa adalah Khunci',
                style: poppinsTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: blackColor,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Recomended Menu',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: blackColor,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    MenuCard(
                      Menu(
                        id: 1,
                        image: 'assets/pic.png',
                        name: 'Burger Reguler',
                        price: '12.000',
                        pricepromo: '8.000',
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM',
                        isPromo: true,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MenuCard(
                      Menu(
                        id: 2,
                        image: 'assets/pic.png',
                        name: 'Burger Reguler',
                        price: '12.000',
                        pricepromo: '8.000',
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM',
                        isPromo: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MenuCard(
                      Menu(
                        id: 3,
                        image: 'assets/pic.png',
                        name: 'Burger Reguler',
                        price: '12.000',
                        pricepromo: '8.000',
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM',
                        isPromo: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MenuCard(
                      Menu(
                        id: 4,
                        image: 'assets/pic.png',
                        name: 'Burger Reguler',
                        price: '12.000',
                        pricepromo: '8.000',
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM',
                        isPromo: false,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MenuCard(
                      Menu(
                        id: 5,
                        image: 'assets/pic.png',
                        name: 'Burger Reguler',
                        price: '12.000',
                        pricepromo: '8.000',
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM',
                        isPromo: true,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MenuCard(
                      Menu(
                        id: 6,
                        image: 'assets/pic.png',
                        name: 'Burger Reguler',
                        price: '12.000',
                        pricepromo: '8.000',
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM',
                        isPromo: true,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MenuCard(
                      Menu(
                        id: 7,
                        image: 'assets/pic.png',
                        name: 'Burger Reguler',
                        price: '12.000',
                        pricepromo: '8.000',
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM',
                        isPromo: true,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MenuCard(
                      Menu(
                        id: 8,
                        image: 'assets/pic.png',
                        name: 'Burger Reguler',
                        price: '12.000',
                        pricepromo: '8.000',
                        note:
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM',
                        isPromo: false,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
