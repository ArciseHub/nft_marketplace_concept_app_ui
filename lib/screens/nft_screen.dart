import 'package:flutter/material.dart';
import 'package:nft_marketplace_concept_app_ui/animations/fade_animation.dart';
import 'package:nft_marketplace_concept_app_ui/screens/nft_offer_overview_screen.dart';
import 'package:nft_marketplace_concept_app_ui/widgets/blur_container.dart';
import 'package:nft_marketplace_concept_app_ui/widgets/info_tile.dart';

class NFTScreen extends StatefulWidget {
  const NFTScreen({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  State<NFTScreen> createState() => _NFTScreenState();
}

bool buttonTapped = false;

class _NFTScreenState extends State<NFTScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010101),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.image,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(widget.image),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: FadeAnimation(
                  intervalEnd: 0.1,
                  child: BlurContainer(
                    child: Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.1),
                      ),
                      child: const Center(
                        child: Text(
                          'Digital NFT Art',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FadeAnimation(
              intervalStart: 0.3,
              child: Text(
                'Monkey #271',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FadeAnimation(
              intervalStart: 0.35,
              child: Text(
                'Owned by Gennady',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FadeAnimation(
              intervalStart: 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  InfoTile(title: '3d 5h 32m', subtitle: 'Remaining Time'),
                  Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: InfoTile(title: '16.7 ETH', subtitle: 'Highest Bid'),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          FadeAnimation(
            intervalStart: 0.6,
            child: GestureDetector(
              onTap: () {
                Future.delayed(const Duration(milliseconds: 900), () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NFTOfferOverviewScreen(image: widget.image)));
                  });
                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff3000ff),
                ),
                child: const FadeAnimation(
                  intervalStart: 0.8,
                  child: Center(
                    child: Text(
                      'Place Bid',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
