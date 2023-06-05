import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour('#FFFFFF'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 44,
              start: 44,
              bottom: 8,
              top:157,
            ),
            child: Image.asset('assets/images/p2.jpg'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 48,
              start: 49,
              bottom: 99,
              top: 8,
            ),
            child: RichText(
              textAlign:TextAlign.center,
              text: TextSpan(
                text:'You can enter the world of ',
                style: TextStyle(
                  fontFamily: 'Segoe UI.ttf',
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color:Colour('#505050'),
                ),
                children:<TextSpan>[
                  TextSpan(
                    text:'metavirus',
                    style:  TextStyle(
                      fontFamily: 'Segoe UI.ttf',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color:Colour('#505050'),
                    ),
                  ),
                  TextSpan(
                    text: '& \nUsing ',
                    style:TextStyle(
                      fontFamily: 'Segoe UI.ttf',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color:Colour('#505050'),
                    ),
                  ),
                  TextSpan(
                    text:'chatbot',
                    style:  TextStyle(
                      fontFamily: 'Segoe UI.ttf',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color:Colour('#505050'),
                    ),
                  ),
                  TextSpan(
                    text:' and photodetection    \n technology that can help you in      \n recovery journey.',
                    style:TextStyle(
                      fontFamily: 'Segoe UI.ttf',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color:Colour('#505050'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}