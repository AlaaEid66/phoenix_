import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
class EditPass extends StatefulWidget {
  const EditPass({Key? key}) : super(key: key);

  @override
  State<EditPass> createState() => _EditPassState();
}

class _EditPassState extends State<EditPass> {
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
            'Edit Password',
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
          child: Padding(
            padding: const EdgeInsets.only(
              left: 36,
              right: 35,
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
                      labelText: 'Old password',
                      labelStyle: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                          fontWeight: FontWeight.normal,
                          color: Colour('#000000').withOpacity(0.3)
                      ),
                      prefixIcon:Icon(
                        Icons.lock_outlined,
                        size: 20,
                        color: Colour('#000000').withOpacity(0.3),
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
                      labelText: 'New password',
                      labelStyle: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                          fontWeight: FontWeight.normal,
                          color: Colour('#000000').withOpacity(0.3)
                      ),
                      prefixIcon:Icon(
                        Icons.lock_outlined,
                        size: 20,
                        color: Colour('#000000').withOpacity(0.3),
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
                      labelText: 'Confirm new password',
                      labelStyle: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                          fontWeight: FontWeight.normal,
                          color: Colour('#000000').withOpacity(0.3)
                      ),
                      prefixIcon:Icon(
                        Icons.lock_outlined,
                        size: 20,
                        color: Colour('#000000').withOpacity(0.3),
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
