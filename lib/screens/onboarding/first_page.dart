import 'package:flutter/material.dart';
import 'package:preview_project/constants/color.dart';
import 'package:preview_project/functions/next_page.dart';
import 'package:preview_project/screens/login/login.dart';
import 'package:preview_project/screens/onboarding/second_page.dart';
import 'package:preview_project/screens/onboarding/third_page.dart';
import 'package:preview_project/widgets/bold_text.dart';
import 'package:preview_project/widgets/button_image.dart';
import 'package:preview_project/widgets/center_image.dart';
import 'package:preview_project/widgets/text_styles.dart';

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
            const BoldText(text: 'Get your property that you want with mates'),
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
            TextButton(
              onPressed: () {
                nextPage(context: context, widget:  Login());
              },
              child: regularText(text: 'Skip', color: kBlackColor),
            ),
          ],
        ),
      ),
    );
  }
}
