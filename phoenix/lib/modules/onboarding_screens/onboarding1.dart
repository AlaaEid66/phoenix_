import 'package:colour/colour.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour('#FFFFFF'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 153,
                bottom: 8,
                right: 44,
                left: 44,
              ),
              child: Image.asset('assets/images/p1.jpg'),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left:130,
                      right: 128,
                      bottom: 8
                  ),
                  child: Text(
                    'All you need !',
                    style: TextStyle(
                      color: Colour('#505050'),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Segoe UI',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 65,
                    left: 66,
                    bottom: 94,
                  ),
                  child: Text(
                    'An integrated community in which\n you can find doctors,psychiatrists      \n and recovers to help you.',
                    style: TextStyle(
                      fontFamily: 'Segoe UI.ttf',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colour('#505050'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}