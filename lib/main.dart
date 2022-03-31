import 'package:flutter/material.dart';
import 'package:nft_marketplace_concept_app_ui/screens/home_screen.dart';
import 'package:nft_marketplace_concept_app_ui/screens/nft_offer_overview_screen.dart';
import 'package:nft_marketplace_concept_app_ui/screens/nft_offer_send.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFTs',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/NFTOfferSend': (context) => const NFTOfferSend(),
      },
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
