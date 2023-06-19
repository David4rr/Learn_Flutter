import 'package:flutter/material.dart';
import 'package:foodsapp/Models/menu.dart';
import '../theme.dart';

class MenuCard extends StatelessWidget {
  // const MenuCard({Key? key}) : super(key: key);

  final Menu menu;
  MenuCard(this.menu);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            menu.image,
            width: 130,
            height: 110,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              menu.isPromo
                  ? Image.asset(
                      'assets/Promo.png',
                      width: 47,
                      height: 16,
                    )
                  : Image.asset(
                      'assets/Terlaris.png',
                      width: 47,
                      height: 16,
                    ),
              const SizedBox(
                height: 4,
              ),
              Text(
                '${menu.name}',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: blackColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'Rp ${menu.price}',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: greyColor,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Rp ${menu.pricepromo}',
                    style: poppinsTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: yellowColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Free Delivery.',
                style: poppinsTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: greyColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
