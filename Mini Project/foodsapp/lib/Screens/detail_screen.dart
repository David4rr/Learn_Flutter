import 'package:flutter/material.dart';
import 'package:foodsapp/Models/size.dart';
import 'package:foodsapp/Widgets/sized_card.dart';
import 'package:foodsapp/theme.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/Thumbnail.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 254,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                      left: 25,
                      right: 25,
                      bottom: 35,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/Promo.png',
                          width: 60,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Burger Reguler",
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor),
                            ),
                            SizedBox(
                              width: 44,
                            ),
                            Image.asset(
                              'assets/Minus.png',
                              width: 33,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '1',
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Image.asset(
                              'assets/Plus.png',
                              width: 33,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Text(
                              'Rp 28.000',
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
                              'Rp 22.000',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: yellowColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Pilih Ukuran',
                          style: poppinsTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            SizedCard(
                              Size(id: 1, name: "Mini", isActive: true),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            SizedCard(
                              Size(id: 2, name: "Sedang", isActive: false),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            SizedCard(
                              Size(id: 3, name: "Besar", isActive: false),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            SizedCard(
                              Size(id: 4, name: "Super Besar", isActive: false),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Catatan Penjual',
                          style: poppinsTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                            style: poppinsTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: greyColor,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Lokasi Burger Jawa',
                          style: poppinsTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/Img_store.png',
                              width: 50,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'Jl. Raya Mayong Jepara\n Jawa tengah',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greyColor,
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_right,
                                color: greyColor,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Beli',
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: whiteColor),
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                              primary: yellowColor,
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/btn_share.png',
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
