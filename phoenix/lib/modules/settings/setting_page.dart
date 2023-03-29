import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/settings/about_us.dart';
import 'package:phoenix/modules/settings/contact_us.dart';
import 'package:phoenix/modules/settings/edit_mail.dart';
import 'package:phoenix/modules/settings/edit_pass.dart';
import 'package:phoenix/modules/settings/rate.dart';
import 'package:phoenix/modules/settings/share_app.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        appBar: AppBar(
          elevation: 0,
          backgroundColor:Colour('#FFFFFF') ,
          centerTitle:true,
          title:Text(
            'Setting',
            style:TextStyle(
              color: Colour('#505050'),
              fontFamily: 'Segoe UI',
              fontSize: 18,
              fontWeight:FontWeight.bold,
            ),
          ),
          leading:IconButton(
            color:Colour('#000000').withOpacity(0.5),
            onPressed:()=>Navigator.pop(context),
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 72
                ),
                child: Card(
                  elevation: 5,
                  color: Colour('#FFFFFF'),
                  child: Row(
                    children: [
                      const SizedBox(
                        width:28,
                      ),
                      Text(
                        'Edit email',
                        style:TextStyle(
                          color: Colour('#505050'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                        ),
                      ),
                      SizedBox(
                        width:MediaQuery.of(context).size.width*0.54,
                      ),
                      IconButton(
                        onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const EditMail())),
                        icon:const Icon(Icons.arrow_forward_ios_rounded),
                        color:Colour('#505050'),
                        iconSize: 22,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8,
                ),
                child: Card(
                  elevation: 5,
                  color: Colour('#FFFFFF'),
                  child: Row(
                    children: [
                      const SizedBox(
                        width:28,
                      ),
                      Text(
                        'Edit password',
                        style:TextStyle(
                          color: Colour('#505050'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                        ),
                      ),
                      SizedBox(
                        width:MediaQuery.of(context).size.width*0.46,
                      ),
                      IconButton(
                        onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const EditPass())),
                        icon:const Icon(Icons.arrow_forward_ios_rounded),
                        color:Colour('#505050'),
                        iconSize: 22,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Card(
                  elevation: 5,
                  color: Colour('#FFFFFF'),
                  child: Row(
                    children: [
                      const SizedBox(
                        width:28,
                      ),
                      Text(
                        'Rate App',
                        style:TextStyle(
                          color: Colour('#505050'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                        ),
                      ),
                      SizedBox(
                        width:MediaQuery.of(context).size.width*0.55,
                      ),
                      IconButton(
                        onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const RateApp())),
                        icon:const Icon(Icons.arrow_forward_ios_rounded),
                        color:Colour('#505050'),
                        iconSize: 22,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Card(
                  elevation: 5,
                  color: Colour('#FFFFFF'),
                  child: Row(
                    children: [
                      const SizedBox(
                        width:28,
                      ),
                      Text(
                        'Share App',
                        style:TextStyle(
                          color: Colour('#505050'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                        ),
                      ),
                      SizedBox(
                        width:MediaQuery.of(context).size.width*0.52,
                      ),
                      IconButton(
                        onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const ShareApp())),
                        icon:const Icon(Icons.arrow_forward_ios_rounded),
                        color:Colour('#505050'),
                        iconSize: 22,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Card(
                  elevation: 5,
                  color: Colour('#FFFFFF'),
                  child: Row(
                    children: [
                      const SizedBox(
                        width:28,
                      ),
                      Text(
                        'About Us',
                        style:TextStyle(
                          color: Colour('#505050'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                        ),
                      ),
                      SizedBox(
                        width:MediaQuery.of(context).size.width*0.53,
                      ),
                      IconButton(
                        onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const AboutUs())),
                        icon:const Icon(Icons.arrow_forward_ios_rounded),
                        color:Colour('#505050'),
                        iconSize: 22,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Card(
                  elevation: 5,
                  color: Colour('#FFFFFF'),
                  child: Row(
                    children: [
                      const SizedBox(
                        width:28,
                      ),
                      Text(
                        'Contact Us',
                        style:TextStyle(
                          color: Colour('#505050'),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                        ),
                      ),
                      SizedBox(
                        width:MediaQuery.of(context).size.width*0.49,
                      ),
                      IconButton(
                        onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const ContactUs())),
                        icon:const Icon(Icons.arrow_forward_ios_rounded),
                        color:Colour('#505050'),
                        iconSize: 22,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
