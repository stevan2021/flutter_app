import 'package:flutter/material.dart';
import 'package:preview_project/screens/login/login.dart';
import 'package:preview_project/widgets/bold_text.dart';
import 'package:preview_project/widgets/center_image.dart';
import 'package:preview_project/widgets/elevated_button.dart';

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
            const Text(
              'BuyMates manage the property and pay your rental %',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            // const BoldText(
            //     text: 'BuyMates manage the\n property and pay your\n rental %'),
            const SizedBox(
              height: 20,
            ),
            elevatedButton(
                context: context,
                text: 'Get Started',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
