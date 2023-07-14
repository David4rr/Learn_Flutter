import 'package:flutter/material.dart';
import '../theme.dart';
import 'package:foodsapp/Models/size.dart';

class SizedCard extends StatelessWidget {
  final Size size;
  const SizedCard(this.size, {Key? key}) : super(key: key);
  // const SizedCard(this.size, {Key? key}) : super(key: key);
  // const SizedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: size.isActive
          ? Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: grey2Color,
                border: Border.all(
                  color: grey2Color,
                  width: 1.5,
                ),
              ),
              child: Text(
                size.name,
                style: poppinsTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: blackColor,
                ),
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: grey2Color,
                  width: 1.5,
                ),
              ),
              child: Text(
                size.name,
                style: poppinsTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: blackColor,
                ),
              ),
            ),
    );
  }
}
