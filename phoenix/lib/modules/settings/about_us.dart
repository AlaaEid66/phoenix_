import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour('#FFFFFF'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 90,
                bottom: 40
            ),
            child: Center(
              child: Container(
                width: 271,
                height: 140,
                child: Image.asset('assets/images/c.jpg'),
              ),
            ),
          ),
          Text(
            'An integrated medical community\nin which you can find doctors,\npsychiarist and recovers to help\nyou on your recovery journey',
            style:TextStyle(
              color: Colour('#5B5E60'),
              fontSize: 16,
              fontWeight: FontWeight.normal,
              fontFamily: 'Segoe UI',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          RichText(
            text:TextSpan(
              text:'You can enter the world of ',
              style:TextStyle(
                color: Colour('#5B5E60'),
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: 'Segoe UI',
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
                  text: '\n&Using ',
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
                  text:' and ',
                  style:  TextStyle(
                    fontFamily: 'Segoe UI.ttf',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color:Colour('#505050'),
                  ),
                ),
                TextSpan(
                  text:'photo detection',
                  style:  TextStyle(
                    fontFamily: 'Segoe UI.ttf',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color:Colour('#505050'),
                  ),
                ),
                TextSpan(
                  text:'\ntechnology that can help you to know\n the degree of burn and follow-up it\n during the treatment journey',
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
        ],
      ),
    );
  }
}
