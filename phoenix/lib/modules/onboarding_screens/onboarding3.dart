import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
class OnBoarding3 extends StatefulWidget {
  const  OnBoarding3({Key? key}) : super(key: key);

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour('#FFFFFF'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 44,
                left: 44,
                top: 157,
              ),
              child: Image.asset('assets/images/p3.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 85,
                left: 86,
                bottom: 98,
                top: 8,
              ),
              child: Text('Together until recovery !',
                textAlign:TextAlign.center,
                style:TextStyle(
                  fontFamily: 'Segoe UI.ttf',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color:Colour('#505050'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}