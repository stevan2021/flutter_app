import 'package:flutter/material.dart';
import 'package:preview_project/functions/next_page.dart';
import 'package:preview_project/screens/setup_profile/profile.dart';
import 'package:preview_project/widgets/card_widget.dart';
import 'package:preview_project/widgets/elevated_button.dart';
import 'package:preview_project/widgets/text_field_widget.dart';
import 'package:preview_project/widgets/text_styles.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class VerifyScreen extends StatelessWidget {
  VerifyScreen({Key? key}) : super(key: key);
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            bezierWidget(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                text: 'Verify Number We have sent otp to your number'
                    .toUpperCase()),
            CardWidget(
              widget: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextFieldWidget(
                    textInputType: TextInputType.number,
                    textEditingController: _textEditingController,
                    hintText: 'Enter OTP',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: elevatedButton(
                  context: context,
                  text: 'Verify',
                  function: () =>
                      nextPage(context: context, widget:  ProfileScreen()),
                  rounded: 25),
            ),
            Center(
              child: regularText(
                text: 'Your personal details are safe with us',
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: regularText(
                text: 'Read our Privacy Policy and Terms and Conditions',
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Stack bezierWidget(
      {required double screenHeight,
      required double screenWidth,
      required String text}) {
    return Stack(
      children: [
        Container(
          height: screenHeight * 0.5,
          color: Colors.black,
        ),
        Column(
          children: [
            Container(
              height: screenHeight * 0.42,
              color: Colors.black,
              child: SafeArea(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: SizedBox(
                      width: screenWidth * 0.5,
                      child: extraBoldText(text: text),
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                ClipPath(
                  clipper: ProsteBezierCurve(
                    position: ClipPosition.bottom,
                    list: [
                      BezierCurveSection(
                        start: const Offset(0, 125),
                        top: Offset(screenWidth / 4, 80),
                        end: Offset(screenWidth / 2, 125),
                      ),
                      BezierCurveSection(
                        start: Offset(screenWidth / 2, 125),
                        top: Offset(screenWidth / 4 * 3, 180),
                        end: Offset(screenWidth, 150),
                      ),
                    ],
                  ),
                  child: Container(
                    height: screenHeight * 0.28,
                    color: Colors.black,
                  ),
                ),
                _lockImage()
              ],
            ),
          ],
        ),
      ],
    );
  }

  Padding _lockImage() {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Align(
        alignment: Alignment.centerRight,
        child: Image.asset('asset/lock.png'),
      ),
    );
  }
}
