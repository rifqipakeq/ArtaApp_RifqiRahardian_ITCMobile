import 'package:Arta/shared/theme.dart';
import 'package:flutter/material.dart';

class BankItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final bool isSelected;

  const BankItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: isSelected ? brownColor : whiteColor,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '50 mins',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
