import 'package:Arta/shared/theme.dart';
import 'package:Arta/ui/widgets/buttons.dart';
import 'package:Arta/ui/widgets/forms.dart';
import 'package:Arta/ui/widgets/tranfer_recent_users_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
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
            'Search',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildRecentUsers(),
          const SizedBox(
            height: 200,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          TranferRecentUsersItem(
            imageUrl: 'assets/img_friend1.jpg',
            name: 'Apip',
            username: 'apipalexander',
            isVerified: true,
          ),
          TranferRecentUsersItem(
            imageUrl: 'assets/img_friend2.jpg',
            name: 'Tatang',
            username: 'tatangphilip',
            isVerified: true,
          ),
          TranferRecentUsersItem(
            imageUrl: 'assets/img_friend3.jpg',
            name: 'Kokom',
            username: 'princesskokom',
          ),
        ],
      ),
    );
  }
}
