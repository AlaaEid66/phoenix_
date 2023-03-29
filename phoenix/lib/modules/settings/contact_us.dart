import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phoenix/shared/components/component.dart';
class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colour('#EFEFEF'),
            ),
            width: 304,
            height: 48,
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration:InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
                labelText: 'Email',
                labelStyle: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize:18,
                    fontWeight: FontWeight.normal,
                    color: Colour('#000000').withOpacity(0.3)
                ),
              ),
            ),
          ),
          const SizedBox(
            height:10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colour('#EFEFEF'),
            ),
            width: 304,
            height: 48,
            child: TextFormField(
              textInputAction: TextInputAction.done,
              decoration:InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(10),
                ),
                labelText: 'Full name',
                labelStyle: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize:18,
                    fontWeight: FontWeight.normal,
                    color: Colour('#000000').withOpacity(0.3)
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colour('#FFFFFF'),
              border:Border.all(color:Colour('#008894'),width:2),
            ),
            width: 304,
            height: 110,
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration:InputDecoration(
                focusColor: Colour('#FFFFFF'),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colour('#FFFFFF'),
                    width: 0,
                  ),
                ),
                hintText: 'Write..',
                hintStyle: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize:16,
                    fontWeight: FontWeight.normal,
                    color: Colour('#505050'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          defButton(
            border: 10,
            backgroundColor: Colour('#008894'),
            pressed:(){},
            text:'Submit',
            width: 92,
            height: 32,
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 92,
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed:(){},
                    icon:const Icon(Icons.call),
                  iconSize: 20,
                  color: Colour('#5B5E60'),
                ),
                Text(
                  '+136 479 643',
                  style:TextStyle(
                    color: Colour('#505050'),
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 92,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed:(){},
                  icon:const Icon(Icons.mail),
                  iconSize: 20,
                  color: Colour('#5B5E60'),
                ),
                Text(
                  'Phoenix11@gmail.com',
                  style:TextStyle(
                      color: Colour('#505050'),
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 123,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed:(){},
                  icon:const Icon(FontAwesomeIcons.facebook),
                  iconSize: 33,
                  color: Colour('#3B5998'),
                ),
                IconButton(
                  onPressed:(){},
                  icon:const Icon(FontAwesomeIcons.twitter),
                  iconSize: 33,
                  color: Colour('#26A6D1'),
                ),
                IconButton(
                  onPressed:(){},
                  icon:const Icon(FontAwesomeIcons.instagram),
                  iconSize: 33,
                  color: Colour('#E7316C'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
