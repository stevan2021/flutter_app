import 'package:flutter/material.dart';
import 'package:preview_project/first_page.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late Future getFuture;

  Future<void> initial() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  void initState() {
    getFuture = initial();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('asset/logo.png'),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Property Sharing solutions',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0),
                      ),
                      const SizedBox(
                        height: 75,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('asset/background.png'),
                ),
              ],
            ),
          );
        }
        return const FirstPage();
      },
    );
  }
}
