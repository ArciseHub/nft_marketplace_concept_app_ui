import 'package:flutter/material.dart';
import 'package:nft_marketplace_concept_app_ui/animations/fade_animation.dart';

class NFTOfferSend extends StatelessWidget {
  const NFTOfferSend({Key? key}) : super(key: key);
  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: const Color(0xff3000ff),
        body: Column(
          children: [
            const Spacer(flex: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FadeAnimation(
                  intervalStart: 0.4,
                  child: Text(
                    'Great!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
                SizedBox(height: 12),
                FadeAnimation(
                  intervalStart: 0.5,
                  child: Text(
                    'We send you an email!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(height: 6),
                FadeAnimation(
                  intervalStart: 0.6,
                  child: Text(
                    'To confirm your request, we send an email to \nsamuelmurschall@gmx.de. Please click on the link to verify \nyour offer and make it to final stage. The funds from your \noriginal bid will be deposited back into your wallet. If the \nauction is still live, you can place another bid, higher than \nthe current one, by clicking on "Bid again".',
                  ),
                ),
              ],
            ),
            const Spacer(flex: 2),
            FadeAnimation(
              intervalStart: 0.8,
              child: GestureDetector(
                onTap: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff010101),
                  ),
                  child: const Center(
                    child: Text(
                      'Back to home',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
