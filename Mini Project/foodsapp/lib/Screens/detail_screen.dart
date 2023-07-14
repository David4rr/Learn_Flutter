// ignore_for_file: sized_box_for_whitespace, unused_field

import 'package:flutter/material.dart';
import 'package:foodsapp/Models/size.dart';
import 'package:foodsapp/Widgets/sized_card.dart';
import 'package:foodsapp/theme.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int dataPrice = 28000;
  int dataPricePromo = 22000;

  int price = 28000;
  int pricePromo = 22000;

  int i = 1;
  bool isMini = true;
  bool isSedang = false;
  bool isBesar = false;
  bool isSuperBesar = false;

  void _minus() {
    if (i > 1) {
      setState(() {
        i--;

        if (isMini == true) {
          price = dataPrice * i;
          pricePromo = dataPricePromo * i;
        } else if (isSedang == true) {
          price = (dataPrice + 2000) * i;
          pricePromo = (dataPricePromo + 2000) * i;
        } else if (isBesar == true) {
          price = (dataPrice + 4000) * i;
          pricePromo = (dataPricePromo + 4000) * i;
        } else if (isSuperBesar == true) {
          price = (dataPrice + 6000) * i;
          pricePromo = (dataPricePromo + 6000) * i;
        }
      });
    }
  }

  void _plus() {
    setState(() {
      i++;

      if (isMini == true) {
        price = dataPrice * i;
        pricePromo = dataPricePromo * i;
      } else if (isSedang == true) {
        price = (dataPrice + 2000) * i;
        pricePromo = (dataPricePromo + 2000) * i;
      } else if (isBesar == true) {
        price = (dataPrice + 4000) * i;
        pricePromo = (dataPricePromo + 4000) * i;
      } else if (isSuperBesar == true) {
        price = (dataPrice + 6000) * i;
        pricePromo = (dataPricePromo + 6000) * i;
      }
    });
  }

  void _clickMini() {
    setState(() {
      price = dataPrice * i;
      pricePromo = dataPricePromo * i;
      isMini = true;
      isSedang = false;
      isBesar = false;
      isSuperBesar = false;
    });
  }

  void _clickSedang() {
    setState(() {
      price = (dataPrice + 2000) * i;
      pricePromo = (dataPricePromo + 2000) * i;
      isMini = false;
      isSedang = true;
      isBesar = false;
      isSuperBesar = false;
    });
  }

  void _clickBesar() {
    setState(() {
      price = (dataPrice + 4000) * i;
      pricePromo = (dataPricePromo + 4000) * i;
      isMini = false;
      isSedang = false;
      isBesar = true;
      isSuperBesar = false;
    });
  }

  void _clickSuperBesar() {
    setState(() {
      price = (dataPrice + 6000) * i;
      pricePromo = (dataPricePromo + 6000) * i;
      isMini = false;
      isSedang = false;
      isBesar = false;
      isSuperBesar = true;
    });
  }

  bool _hasCallSupport = false;
  Future<void>? _launched;
  @override
  void initState() {
    super.initState();
    // Check for phone call support.
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      )) {
        throw Exception('Could not launch $url');
      }
    }
    final Uri toLaunch =
        Uri(scheme: 'https', host: 'www.instagram.com', path: 'itscryptic2/');
    final Uri toLaunch2 =
        Uri(scheme: 'https', host: 'wa.me', path: '/', queryParameters: {
      'text': 'Beli Burgernya Jika tidak saya pinjam 200k :v'
    });
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
                const SizedBox(
                  height: 254,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
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
                        const SizedBox(
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
                            const SizedBox(
                              width: 44,
                            ),
                            InkWell(
                              onTap: _minus,
                              child: Image.asset(
                                'assets/Minus.png',
                                width: 33,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '$i',
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            InkWell(
                              onTap: _plus,
                              child: Image.asset(
                                'assets/Plus.png',
                                width: 33,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(price),
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
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(pricePromo),
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: yellowColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
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
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                _clickMini();
                              },
                              child: SizedCard(
                                Size(
                                  id: 1,
                                  name: "Mini",
                                  isActive: isMini,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              onTap: () {
                                _clickSedang();
                              },
                              child: SizedCard(
                                Size(
                                  id: 2,
                                  name: "Sedang",
                                  isActive: isSedang,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              onTap: () {
                                _clickBesar();
                              },
                              child: SizedCard(
                                Size(
                                  id: 3,
                                  name: "Besar",
                                  isActive: isBesar,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              onTap: () {
                                _clickSuperBesar();
                              },
                              child: SizedCard(
                                Size(
                                  id: 4,
                                  name: "Super Besar",
                                  isActive: isSuperBesar,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
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
                        const SizedBox(
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
                        const SizedBox(
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
                        const SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: () => setState(() {
                            _launched = _launchInBrowser(toLaunch);
                          }),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/Img_store.png',
                                width: 50,
                              ),
                              const SizedBox(
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
                              const SizedBox(
                                width: 14,
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.chevron_right,
                                  color: greyColor,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () => setState(() {
                              _launched = _launchInBrowser(toLaunch2);
                            }),
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                              primary: yellowColor,
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                              ),
                            ),
                            child: Text(
                              'Beli',
                              style: poppinsTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: whiteColor),
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
              padding: const EdgeInsets.all(20),
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
