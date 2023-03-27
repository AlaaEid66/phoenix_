import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phoenix/registration/signUp_doctor.dart';
import 'package:phoenix/registration/signUp_user.dart';
class Interface extends StatefulWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 330,
          left: 48,
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: 120,
                  height: 130,
                  decoration: BoxDecoration(
                    border:Border.all(color:Colour('#008894'),width:3),
                    borderRadius:BorderRadius.circular(10),

                  ),
                  child: IconButton(
                    iconSize: 40,
                    icon: const Icon(FontAwesomeIcons.stethoscope),
                    onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const SignUpDoctor())),
                    color: Colour('#008894'),
                  ),
                ),
                Text(
                  'Doctor',
                  style:TextStyle(
                    color: Colour('#008894'),
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe UI',
                  ),
                ),
              ],
            ),
           const SizedBox(
              width: 40,
            ),
            Column(
              children: [
                Container(
                  width: 120,
                  height: 130,
                  decoration: BoxDecoration(
                    border:Border.all(color:Colour('#008894'),width:3),
                    borderRadius:BorderRadius.circular(10),

                  ),
                  child: IconButton(
                    iconSize: 60,
                    icon:const Icon(Icons.person),
                    onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const SignUpUser())),
                    color: Colour('#008894'),
                  ),
                ),
                Text(
                  'User',
                  style:TextStyle(
                    color: Colour('#008894'),
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Segoe UI',
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
