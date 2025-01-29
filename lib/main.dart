import 'package:Arta/shared/theme.dart';
import 'package:Arta/ui/pages/data_provide_page.dart';
import 'package:Arta/ui/pages/home_page.dart';
import 'package:Arta/ui/pages/invoice_page.dart';
import 'package:Arta/ui/pages/onboarding_page.dart';
import 'package:Arta/ui/pages/profil_pages.dart';
import 'package:Arta/ui/pages/sign_in_page.dart';
import 'package:Arta/ui/pages/splash_page.dart';
import 'package:Arta/ui/pages/topup_page.dart';
import 'package:Arta/ui/pages/transfer_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          titleTextStyle: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 20,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilPage(),
        '/topup': (context) => const TopupPage(),
        '/transfer': (context) => const TransferPage(),
        '/data': (context) => const DataProvidePage(),
        '/invoice': (context) => const InvoicePage(),
      },
    );
  }
}
