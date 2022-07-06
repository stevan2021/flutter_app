import 'package:flutter/material.dart';
import 'package:preview_project/screens/onboarding/second_page.dart';
import 'package:preview_project/widgets/bold_text.dart';
import 'package:preview_project/widgets/button_image.dart';
import 'package:preview_project/widgets/center_image.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
                image: 'asset/home.png',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Get your property\n that you want with\n mates',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondPage()));
              },
              child: const ButtonImage(),
            ),
          ],
        ),
      ),
    );
  }
}
