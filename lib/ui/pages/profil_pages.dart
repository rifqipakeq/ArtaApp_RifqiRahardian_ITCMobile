import 'package:Arta/shared/theme.dart';
import 'package:Arta/ui/widgets/buttons.dart';
import 'package:Arta/ui/widgets/profil_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/img_profile.jpg',
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 26,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Rifqi Rahardian',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfilMenuItem(
                  iconURL: 'assets/ic_edit_profile.png',
                  title: 'Edit Profile',
                  onTap: () {},
                ),
                ProfilMenuItem(
                  iconURL: 'assets/ic_pin.png',
                  title: 'My PIN',
                  onTap: () {},
                ),
                ProfilMenuItem(
                  iconURL: 'assets/ic_wallet.png',
                  title: 'Wallet Settings',
                ),
                ProfilMenuItem(
                  iconURL: 'assets/ic_reward.png',
                  title: 'My Rewards',
                ),
                ProfilMenuItem(
                  iconURL: 'assets/ic_help.png',
                  title: 'Help Center',
                ),
                ProfilMenuItem(
                  iconURL: 'assets/ic_logout.png',
                  title: 'Log Out',
                  onTap: () {
                    confirmLogout(context);
                  },
                ),
              ],
            ),
          ),
          CustomeTextButton(
            title: 'Report A Problem',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

void confirmLogout(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
          content: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 27,
              vertical: 15,
            ),
            height: 143,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: lightBackgroundColor,
            ),
            child: Column(
              children: [
                Text(
                  'CONFIRM LOGOUT',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Are you sure want to logout?',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 8,
                        ),
                        width: 100,
                        height: 42,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'NO',
                            style: whiteTextStyle.copyWith(
                              fontSize: 17,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 8,
                        ),
                        width: 100,
                        height: 42,
                        decoration: BoxDecoration(
                          color: redColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'YES',
                            style: whiteTextStyle.copyWith(
                              fontSize: 17,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      });
}
