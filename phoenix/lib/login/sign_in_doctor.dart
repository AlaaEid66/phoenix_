
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:colour/colour.dart';
import 'package:phoenix/layout/bottom_navigationbar/bottomnav.dart';

import 'package:phoenix/widgets/shared/components/component.dart';
import 'package:phoenix/widgets/shared/components/size_config.dart';

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
            padding: const EdgeInsetsDirectional.only(
              top: 200,
              start: 26,
              end: 20,
            ),
            child: Container(
              height: height(context, 1.7),
              width: height(context, 2),
              decoration: BoxDecoration(
                color:Colour('#F0FBFC'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 30,
                    ),
                    child: Container(
                      height: height(context, 16),
                      width: height(context, 16),
                      child:const Image(
                        image:AssetImage('assets/images/pic2.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 10,
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
                    padding: const EdgeInsetsDirectional.only(
                      start: 17,
                      end: 18,
                      bottom: 12,
                    ),
                    child: defaultFormField(
                      context: context,
                      controller: emailController,
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
                      end: 18,
                      start: 17,
                    ),
                    child: defaultFormField(
                      context: context,
                      obscureText: passwordVisible!,
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      validate:(val) {
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
                      hint: 'Password',
                      prefix: Icons.lock_outline,
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 190,
                      top: 3,
                      end: 24,
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
                    padding: const EdgeInsetsDirectional.only(
                      start: 17,
                      end: 18,
                      top: 18,
                      bottom: 30,
                    ),
                    child: defButton(
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


