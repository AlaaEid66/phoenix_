import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
class EditUserName extends StatefulWidget {
  const EditUserName({super.key});

  @override
  State<EditUserName> createState() => _EditUserNameState();
}

class _EditUserNameState extends State<EditUserName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 50,
      ),
      child: Scaffold(
        appBar:AppBar(
          title:const Text('Edit Password',),
          leading:IconButton(
            color:Colour('#000000').withOpacity(0.5),
            onPressed:()=>Navigator.pop(context),
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 36,
                end: 35,
                top: 70
            ),
            child: Column(
              children: [
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
                      labelText: 'Old User Name',
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
                  height: 16,
                ),
                Container(
                  width: 304,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colour('#EFEFEF'),
                  ),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                      ),
                      labelText: 'New User Name',
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
                  height: 56,
                ),
                defButton(
                  border: 10,
                  backgroundColor: Colour('#008894'),
                  pressed:(){},
                  text:'Edit',
                  width: 304,
                  height: 48,

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
