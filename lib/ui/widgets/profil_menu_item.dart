import 'package:Arta/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfilMenuItem extends StatelessWidget {
  final String iconURL;
  final String title;
  final VoidCallback? onTap;

  const ProfilMenuItem({
    Key? key,
    required this.iconURL,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          children: [
            Image.asset(
              iconURL,
              width: 24,
            ),
            const SizedBox(
              width: 18,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
