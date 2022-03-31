import 'package:flutter/material.dart';
import 'package:nft_marketplace_concept_app_ui/animations/fade_animation.dart';
import 'package:nft_marketplace_concept_app_ui/animations/scale_screen_transition.dart';
import 'package:nft_marketplace_concept_app_ui/screens/nft_offer_send.dart';

class NFTOfferOverviewScreen extends StatelessWidget {
  const NFTOfferOverviewScreen({Key? key, required this.image})
      : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010101),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            heightFactor: 1.75,
            child: Stack(
              children: [
                Positioned(
                  child: Hero(
                    tag: image,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(image, scale: 2.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
          FadeAnimation(
            intervalStart: 0.1,
            child: Center(
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 22, 22, 22),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: FadeAnimation(
                    intervalStart: 0.25,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Samuel',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Offered to you',
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(image, scale: 12.5),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Total amount',
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              '8.24 ETH',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
            child: FadeAnimation(
              intervalStart: 0.35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Fiat amount',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    '23,234.30 USD',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.5, left: 20, right: 20),
            child: FadeAnimation(
              intervalStart: 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Order number',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    '393lf0F34l3eY1mq34Qz',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.5, left: 20, right: 20),
            child: FadeAnimation(
              intervalStart: 0.45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Network',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Binance smart chain',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
            child: FadeAnimation(
              intervalStart: 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.account_balance_wallet,
                          color: Colors.white, size: 30),
                      SizedBox(width: 30),
                      Icon(Icons.attach_money, color: Colors.white, size: 30),
                    ],
                  ),
                  const ScaleScreenTransition(
                    screenTransitionTo: NFTOfferSend(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
