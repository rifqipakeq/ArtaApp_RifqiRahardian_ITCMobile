import 'package:flutter/material.dart';
import 'package:Arta/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double widht;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    Key? key,
    required this.title,
    this.widht = double.infinity,
    this.height = 50,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widht,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: brownColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(56),
            )),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}

class CustomeTextButton extends StatelessWidget {
  final String title;
  final double widht;
  final double height;
  final VoidCallback? onPressed;

  const CustomeTextButton({
    Key? key,
    required this.title,
    this.widht = double.infinity,
    this.height = 50,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widht,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Text(
            title,
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}


