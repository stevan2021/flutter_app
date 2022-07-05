import 'package:flutter/material.dart';
import 'package:preview_project/widgets/card_widget.dart';
import 'package:preview_project/widgets/elevated_button.dart';
import 'package:preview_project/widgets/text_styles.dart';

const kBlackColor = Colors.black;
const kWhiteColor = Colors.white;

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Icon(
              Icons.fact_check_outlined,
              color: kBlackColor,
              size: 150,
            ),
            Center(
                child:
                    boldText(size: 20, text: 'Well done!', color: kBlackColor)),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: boldText(
                    text: 'Your approximate purchasing power is',
                    textAlign: TextAlign.center,
                    color: kBlackColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: kBlackColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: boldText(text: '\$250,000', size: 40)),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            elevatedButton(
                context: context, text: 'Find a property', function: () {}),
            const SizedBox(
              height: 20,
            ),
            elevatedButton(
                context: context, text: 'Go to Home', function: () {}),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                const Divider(
                  indent: 5,
                  endIndent: 5,
                  thickness: 2,
                ),
                Center(
                  child: Container(
                    width: 50,
                    color: kWhiteColor,
                    child: Center(
                        child: regularText(text: 'Share', color: kBlackColor)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedShareIcons(
                  icon: Icons.facebook_rounded,
                  function: () {},
                ),
                RoundedShareIcons(
                  icon: Icons.whatsapp_rounded,
                  function: () {},
                ),
                RoundedShareIcons(
                  icon: Icons.facebook_rounded,
                  function: () {},
                ),
                RoundedShareIcons(
                  icon: Icons.facebook_rounded,
                  function: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedShareIcons extends StatelessWidget {
  final Function() function;
  final IconData icon;

  const RoundedShareIcons({
    required this.function,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: CardWidget(
        elevation: 2,
        radius: 5,
        color: kBlackColor,
        widget: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
