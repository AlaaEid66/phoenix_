import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
import 'package:phoenix/widgets/shared/components/size_config.dart';
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
      padding: const EdgeInsetsDirectional.only(
        top:40,
        start: 10,
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
            padding: const EdgeInsetsDirectional.only(
              start: 2,
              end: 20,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    end: 140
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
                  padding: const EdgeInsetsDirectional.only(
                    end: 60,
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
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 12,
                  ),
                  child: defaultFormField(
                    context: context,
                    keyboardType: TextInputType.emailAddress,
                    validate: (val) {
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
                    hint: 'Email',
                    prefix: Icons.email,
                  ),

                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 17,
                    end: 18,
                    top: 18,
                    bottom: 30,
                  ),
                  child: defButton(
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
