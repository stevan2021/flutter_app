import 'package:flutter/material.dart';
import 'package:preview_project/functions/next_page.dart';
import 'package:preview_project/screens/setup_profile/expenses.dart';
import 'package:preview_project/widgets/card_widget.dart';
import 'package:preview_project/widgets/customAppBar.dart';
import 'package:preview_project/widgets/elevated_button.dart';
import 'package:preview_project/widgets/liner_indicator.dart';
import 'package:preview_project/widgets/text_field_widget.dart';
import 'package:preview_project/widgets/text_styles.dart';

class PurchasePower extends StatefulWidget {
  const PurchasePower({Key? key}) : super(key: key);

  @override
  State<PurchasePower> createState() => _PurchasePowerState();
}

class _PurchasePowerState extends State<PurchasePower> {
  final double percentCompleted = 0.6;

  final TextEditingController _textEditingController = TextEditingController();

  final List<int> _dropDownList = [0, 1, 2, 3, 4, 5, 6];

  int? _selectedYear;
  bool cashInHand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
              text: 'Calculate your Purchase Power', backButton: true),
          const SizedBox(
            height: 20,
          ),
          buildLinearPercentIndicator(percent: percentCompleted),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                boldText(text: 'My income', color: Colors.black),
                const SizedBox(
                  height: 20,
                ),
                boldText(
                    text: 'I earn (before tax)', color: Colors.black, size: 18),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: SizedBox(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: TextFieldWidget(
                              textEditingController: _textEditingController,
                              hintText: '',
                              textInputType: TextInputType.number),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CardWidget(
                        color: Colors.white,
                        radius: 5,
                        widget: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                              underline: Container(),
                              isExpanded: true,
                              elevation: 0,
                              value: _selectedYear,
                              hint: const Text('Per year'),
                              items: _dropDownList.map((value) {
                                return DropdownMenuItem(
                                    value: value,
                                    child: Text(value.toString()));
                              }).toList(),
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedYear = value;
                                });
                              }),
                        ),
                      ),
                    )
                  ],
                ),
                regularText(
                    text: '(Annual income before tax)',
                    color: Colors.black.withOpacity(0.5),
                    size: 12),
                const SizedBox(
                  height: 20,
                ),
                CardWidget(
                  color: Colors.white,
                  elevation: 2,
                  radius: 10,
                  widget: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title:
                        regularText(text: 'Cash in hand?', color: Colors.black),
                    tristate: true,
                    value: cashInHand,
                    checkColor: Colors.black,
                    activeColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onChanged: (value) {
                      setState(
                        () {
                          cashInHand = !cashInHand;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: elevatedButton(
                context: context,
                text: 'NEXT',
                function: () => nextPage(
                  context: context,
                  widget: const Expenses(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
