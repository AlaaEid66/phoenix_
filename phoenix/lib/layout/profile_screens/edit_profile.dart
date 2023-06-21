import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/settings/edit_mail.dart';
import 'package:phoenix/modules/settings/edit_pass.dart';
import 'package:phoenix/modules/settings/edit_username.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.only(
        top: 50,
        ),
      child: Scaffold(
        appBar: AppBar(
          title:const Text('Edit Profile',),
          leading:IconButton(
            color:Colour('#000000').withOpacity(0.5),
            onPressed:()=>Navigator.pop(context),
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body:Column(
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
                      'Edit userName',
                      style:TextStyle(
                        color: Colour('#505050'),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Segoe UI',
                        fontSize:18,
                      ),
                    ),
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.44,
                    ),
                    IconButton(
                      onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const EditUserName())),
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
    );
  }
}
