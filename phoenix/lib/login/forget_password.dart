import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/shared/components/component.dart';
class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  var emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top:40,
        left: 10,
      ),
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        appBar: AppBar(
          elevation: 0,
          backgroundColor:Colour('#FFFFFF') ,
          leading:IconButton(
            color:Colour('#000000').withOpacity(0.5),
            onPressed:()=>Navigator.pop(context),
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 2,
              right: 20,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 140
                  ),
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                      color: Colour('#505050').withOpacity(0.7),
                      fontSize:20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Segoe UI'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 60,
                    bottom: 32,
                    top: 8,
                  ),
                  child: Text(
                    'Please entre your email to receive\n a verification.',
                    style: TextStyle(
                        color: Colour('#505050').withOpacity(0.7),
                        fontSize:16,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Segoe UI'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(

                    bottom: 12,
                  ),
                  child: Container(
                    width: 304,
                    height: 48,
                    decoration: BoxDecoration(
                      color:Colour('#EFEFEF'),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      validator: (val) {
                        if(val!.isEmpty){
                          return("Not valid.Please try again");
                        }
                        if (val.length > 100) {
                          return "Email can't to be larger than 100 letter";
                        }
                        if (val.length < 2) {
                          return "Email can't to be less than 2 letter";
                        }
                        return null;
                      },
                      controller:emailController,
                      keyboardType:TextInputType.emailAddress,
                      decoration:InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.normal,
                          color: Colour('#000000').withOpacity(0.4),
                        ),
                        prefixIcon:const Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    right: 18,
                    top: 18,
                    bottom: 30,
                  ),
                  child: defButton(
                    width: 304,
                    backgroundColor: Colour('#008894'),
                    fontSize: 18,
                    text: 'Send',
                    pressed: (){},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
