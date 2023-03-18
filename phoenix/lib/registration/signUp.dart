// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:phoenix/login/signIn.dart';
import 'package:phoenix/modules/home_pagescreens/homepage.dart';
import 'package:phoenix/modules/bottom_navigationbar/bottomnav.dart';
import 'package:phoenix/shared/components/component.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});



  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var password , email;
  bool? passwordVisible = false;
  GlobalKey<FormState>formstate = GlobalKey<FormState>();

  signUp()async{

    var formdata =formstate.currentState;
    if (formdata!.validate()){
      print('Valid');
      formdata.save();
      try{
        UserCredential  userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        return userCredential;
      }on FirebaseAuthException catch(e){
        if(e.code == "weak password"){
          AwesomeDialog(
            context: context,
            title: 'Error',
            body:const Text("Password is too weak"),
          ).show();
          print("The password provided is too weak");
        }else if(e.code == "email-already-in-use"){
          AwesomeDialog(
            context: context,
            title: 'Error',
            body: const Text("The account is already exists for that email"),
          ).show();
          print("The account already exists for the email");
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
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: formstate,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 20,
                  ),
                  child: Center(
                    child: Container(
                      width: 120,
                      height: 120,
                      child:const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                          image:AssetImage('assets/images/logo.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: Text(
                    'Sign Up',
                    style:TextStyle(
                      color:Colour('#008894'),
                      fontSize: 40,
                      fontWeight:FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 10,
                  ),
                  child: Container(
                    color:Colour('#EFEFEF'),
                    child: TextFormField(
                      onSaved: (val){
                        email = val;
                      },
                      keyboardType:TextInputType.emailAddress,

                      validator: (val) {
                        if(val!.isEmpty){
                          return("please enter your email");
                        }
                        if(val.length > 100) {
                          return "Email can't to be larger than 100 letter";
                        }
                        if (val.length < 2) {
                          return "Email can't to be less than 2 letter";
                        }
                        return null;
                      },
                      decoration:InputDecoration(
                        fillColor:Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                        ),
                        labelText: 'E-mail',
                        prefixIcon:const Icon(
                          Icons.mail,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 10,
                  ),
                  child: Container(
                    color:Colour('#EFEFEF'),
                    child: TextFormField(
                      keyboardType:TextInputType.phone,
                      decoration:InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                        ),
                        labelText: 'Phone Number',
                        prefixIcon:const Icon(
                          Icons.phone_iphone_rounded,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                  ),
                  child: Container(
                    color:Colour('#EFEFEF'),
                    child: TextFormField(
                      onSaved: (val){
                        password = val;
                      },
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
                        prefixIcon:const Icon(
                          Icons.lock_outline_sharp,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 10,
                  ),
                  child: Container(
                    color:Colour('#EFEFEF'),
                    child: TextFormField(
                      decoration:InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                        ),
                        labelText:'Gender',
                        prefixIcon:const Icon(
                          Icons.transgender,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 10,
                  ),
                  child: Container(
                    color:Colour('#EFEFEF'),
                    child: TextFormField(
                      keyboardType:TextInputType.number,
                      decoration:InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                        ),
                        labelText: 'Date of birth',
                        prefixIcon:const Icon(
                          Icons.date_range_rounded ,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                defButton(
                  text: 'Sign Up',
                  pressed: ()async{
                    if(formstate.currentState!.validate()){
                      print("Hiii");
                    }
                    UserCredential response = await signUp();
                    if(response != null){
                      Navigator.push(context,MaterialPageRoute(builder:(_)=>HomePage()));
                    }else{
                      print('Sign Up Failed');
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 36,
                    right: 35,
                    top: 10,
                    bottom: 10,
                  ),
                  child: defButton(
                    backgroundColor: Colour('#008894'),
                    fontSize: 18,
                    text: 'Sign Up',
                    pressed: ()async{
                      if(formstate.currentState!.validate()){
                        Navigator.push(context,MaterialPageRoute(builder:(_)=>BottomNav()));

                      }
                      UserCredential ?response = await signUp();
                      if(response != null){
                        print("Login Done");

                      }else{
                        print('Sign Up Failed');
                      }
                    },
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: 370,
                  height: 50,
                  color:Colors.white60,
                  child: Material(
                    borderRadius:BorderRadius.circular(16),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              child:const Image(
                                image:AssetImage('assets/images/pic2.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal:18,
                              ),
                              child: Text(
                                'Sign In with Google',
                                style:TextStyle(
                                    fontSize: 20,
                                    color: Colour('#505050')
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style:TextStyle(
                        fontSize:17,
                        fontWeight:FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>SignIn())),
                      child:Text(
                        'sign In',
                        style:TextStyle(
                          fontSize:19,
                          fontWeight:FontWeight.w800,
                          color:Colour('#008894'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}