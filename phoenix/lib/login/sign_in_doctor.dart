
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:colour/colour.dart';
import 'package:phoenix/modules/bottom_navigationbar/bottomnav.dart';
import 'package:phoenix/widgets/shared/components/component.dart';

import 'forget_password.dart';
class SignInDoctor extends StatefulWidget {
  const SignInDoctor({super.key});

  @override
  _SignInDoctorState createState() => _SignInDoctorState();
}

class _SignInDoctorState extends State<SignInDoctor> {
  bool ?passwordVisible = true;
  var email;
  var password;
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  GlobalKey<FormState>formstate = GlobalKey<FormState>();

  signInDoctor()async{
    var formdata =formstate.currentState;
    formdata!.save();
    if (formdata.validate()){
      print('Valid');
      formdata.save();
      try{
        UserCredential  userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        return userCredential;
      }on FirebaseAuthException catch(e){
        if(e.code == "User-not-found"){
          AwesomeDialog(
            context: context,
            title: 'Error',
            body: const Text("No user found for this email"),
          ).show();
        }else if(e.code == "wrong-password"){
          AwesomeDialog(
            context: context,
            title: 'Error',
            body:const Text("Wrong password provided for that email"),
          ).show();
        }
      }catch(e){
        print(e);
      }
    }else{

      print('Not Valid');
    }
  }
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        padding: mediaQueryData.viewInsets ,
        physics: const BouncingScrollPhysics(),
        reverse: true,
        child: Form(
          key: formstate,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 200,
              left: 26,
              right: 7,
            ),
            child: Container(
              width: 340,
              height: 423,
              decoration: BoxDecoration(
                color:Colour('#F0FBFC'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 41,
                    ),
                    child: Container(
                      width: 48,
                      height: 48,
                      child:const Image(
                        image:AssetImage('assets/images/pic2.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                    ),
                    child: Text(
                      'Sign In with Google',
                      style:TextStyle(
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colour('#505050'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                      right: 18,
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
                            return("please enter your password");
                          }
                          if (val.length > 100) {
                            return "Password can't to be larger than 100 letter";
                          }
                          if (val.length < 4) {
                            return "Password can't to be less than 4 letter";
                          }
                          return null;
                        },

                        obscureText: passwordVisible!,
                        decoration:InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Segoe UI',
                            fontWeight: FontWeight.normal,
                            color: Colour('#000000').withOpacity(0.4),
                          ),
                          prefixIcon:const Icon(
                            Icons.lock_outline_sharp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 190,
                      top: 3,
                      right: 24,
                    ),
                    child: TextButton(
                      child:Text(
                        'Forget Password?',
                        style:TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color:Colour('#505050'),
                        ),
                      ),
                      onPressed:()=> Navigator.push(context,MaterialPageRoute(builder:(_)=>const ForgetPass())),
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
                      text: 'Sign In',
                      pressed: ()async{
                        if(formstate.currentState!.validate()){
                          Navigator.push(context,MaterialPageRoute(builder:(_)=>BottomNav()));

                        }
                        UserCredential ?response = await signInDoctor();
                        if(response != null){
                          print("Login Done");

                        }else{
                          print('Sign Up Failed');
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


