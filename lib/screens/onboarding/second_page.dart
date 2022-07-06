import 'package:flutter/material.dart';
import 'package:preview_project/screens/onboarding/third_page.dart';
import 'package:preview_project/widgets/bold_text.dart';
import 'package:preview_project/widgets/button_image.dart';
import 'package:preview_project/widgets/center_image.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Flexible(
                    child: CenterImage(
                      image: 'asset/man.png',
                    ),
                  ),
                  Flexible(
                    child: CenterImage(
                      image: 'asset/man2.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Boost your purchasing power\n by connecting friends and\n  family to your account',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ThirdPage()));
              },
              child: const ButtonImage(),
            ),
          ],
        ),
      ),
    );
  }
}
