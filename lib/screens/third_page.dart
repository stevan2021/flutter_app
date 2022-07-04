import 'package:flutter/material.dart';
import 'package:preview_project/widgets/bold_text.dart';
import 'package:preview_project/widgets/center_image.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const CenterImage(
                image: 'asset/frame.png',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BoldText(
                text: 'BuyMates manage the property and pay your rental %'),
            const SizedBox(
              height: 20,
            ),
            _elevatedButton(context),
          ],
        ),
      ),
    );
  }

  SizedBox _elevatedButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )),
            backgroundColor: MaterialStateProperty.all(Colors.black)),
        onPressed: () {},
        child: const Text(
          'Get Started',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
