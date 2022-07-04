import 'package:flutter/material.dart';
import 'package:preview_project/screens/third_page.dart';
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
            const CenterImage(
              image: 'asset/man.png',
            ),
            const SizedBox(
              height: 30,
            ),
           const BoldText(text: 'Boost your purchasing power by connecting friends and family to your account',),
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


