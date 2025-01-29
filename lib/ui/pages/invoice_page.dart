import 'package:Arta/shared/theme.dart';
import 'package:Arta/ui/widgets/buttons.dart';
import 'package:Arta/ui/widgets/forms.dart';
import 'package:Arta/ui/widgets/last_payment_item.dart';
import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invoice',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Virtual Account Number',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: 'add virtual account number',
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildLastPayment(),
          const SizedBox(
            height: 200,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget buildLastPayment() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last Payment',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          LastpaymentItem(
            imageUrl: 'assets/ic_transaction_cat3.png',
            name: 'My Telkomsel',
            username: 'PT. Finnet Indonesia',
            number: '10920000239113221',
          ),
          LastpaymentItem(
            imageUrl: 'assets/ic_transaction_cat3.png',
            name: 'INV-33213',
            username: 'TRANSFERPAY',
            number: '10920000239113221',
          ),
          LastpaymentItem(
            imageUrl: 'assets/ic_transaction_cat3.png',
            name: 'Yayasan Kita Bisa',
            username: 'PT. Duta Teknologi',
            number: '10920000239113221',
          ),
        ],
      ),
    );
  }
}
