import 'package:Arta/shared/theme.dart';
import 'package:flutter/material.dart';

class LastpaymentItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final String number;

  const LastpaymentItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.username,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(
        18,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 53,
          ),
          const SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              Text(
                username,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              Text(
                number,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
