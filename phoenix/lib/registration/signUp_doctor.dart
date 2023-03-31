// ignore_for_file: prefer_typing_uninitialized_variables


import 'dart:io';

import 'package:colour/colour.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:phoenix/login/sign_in_doctor.dart';
import 'package:phoenix/modules/bottom_navigationbar/bottomnav.dart';
import 'package:phoenix/shared/components/component.dart';



class SignUpDoctor extends StatefulWidget {
  const SignUpDoctor({super.key});



  @override
  _SignUpDoctorState createState() => _SignUpDoctorState();
}

class _SignUpDoctorState extends State<SignUpDoctor> {
  File? pdfFile;
  void _pickerFile()async{
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg','pdf','doc']
    );
    if (result != null) {
      final path = result.files.single.path;
      setState(() {
        pdfFile= File(path!);
      });
    }
  }
  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  var password , email,phoneNum,gender,dateOfBirth;
  bool? passwordVisible = true;
  GlobalKey<FormState>formState = GlobalKey<FormState>();
  String? selectGender ;
  TextEditingController genderSelected= TextEditingController();
  List<String> genderList=[
    'Male',
    'Female',
  ];
  bool displayGenderList=false;

  signUp()async{

    var formdata =formState.currentState;
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
      }
      catch(e){
        print(e);
      }
    }else{

      print('Not Valid');
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor:Colors.white,
          body: SingleChildScrollView(
            reverse: true,
            child: Form(
              key: formState,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: Center(
                      child: Container(
                        width: 95,
                        height: 88,
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
                      bottom: 56,
                    ),
                    child: Text(
                      'Sign Up',
                      style:TextStyle(
                        fontFamily: 'Segoe UI',
                        color:Colour('#008894'),
                        fontSize: 32,
                        fontWeight:FontWeight.bold,
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
                        textInputAction: TextInputAction.next,
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
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize:18,
                            fontWeight: FontWeight.normal,
                            color: Colour('#000000').withOpacity(0.4),
                          ),
                          prefixIcon:Icon(
                            Icons.mail,
                            size: 26,
                            color: Colour('#000000').withOpacity(0.4),
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
                        textInputAction: TextInputAction.next,
                        keyboardType:TextInputType.phone,
                        decoration:InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                          ),
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize:18,
                            fontWeight: FontWeight.normal,
                            color: Colour('#000000').withOpacity(0.4),
                          ),
                          prefixIcon:Icon(
                            Icons.phone_iphone_rounded,
                            size: 26,
                            color: Colour('#000000').withOpacity(0.4),
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
                        textInputAction: TextInputAction.next,
                        decoration:InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                          ),
                          labelText: ' National ID ',
                          labelStyle: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize:18,
                              fontWeight: FontWeight.normal,
                              color: Colour('#000000').withOpacity(0.4)
                          ),
                          prefixIcon:Icon(
                            FontAwesomeIcons.solidIdCard,
                            size: 25,
                            color: Colour('#000000').withOpacity(0.4),
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
                        textInputAction: TextInputAction.next,
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
                          labelStyle: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize:18,
                            fontWeight: FontWeight.normal,
                            color: Colour('#000000').withOpacity(0.4),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_outline_sharp,
                            size: 26,
                            color: Colour('#000000').withOpacity(0.4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                       horizontal: 36,
                      vertical: 3
                    ),
                    child: Container(
                      color:Colour('#FFFFFF'),
                      child: pdfFile==null?
                      Row(
                        children: [
                          Icon(Icons.file_copy,
                            color: Colour('#008894'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed:_pickerFile,
                            child:Text(
                              'Upload CV',
                              style: TextStyle(
                                color: Colour('#008894'),
                                fontWeight:FontWeight.w600,
                                fontSize: 16,
                                fontFamily: 'Segoe UI',
                              ),
                            ),

                          ),
                        ],
                      ):
                          Image.file(
                            File(pdfFile!.path.toString()),
                          )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 36,
                      right: 35,
                      top: 20,
                      bottom: 5,
                    ),
                    child: defButton(
                      border:10,
                      backgroundColor: Colour('#008894'),
                      fontSize: 18,
                      text: 'Sign Up',
                      pressed: ()async{
                        if(formState.currentState!.validate()){
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
                    height: 4,
                  ),
                  Container(
                    width: 304,
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
                                height: 28,
                                width: 28,
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
                                    fontSize: 16,
                                    color: Colour('#505050'),
                                    fontFamily: 'Segoe UI',
                                    fontWeight: FontWeight.bold,
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
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style:TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize:14,
                          fontWeight:FontWeight.normal,
                        ),
                      ),
                      TextButton(
                        onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const SignInDoctor())),
                        child:Text(
                          'signIn',
                          style:TextStyle(
                            fontSize:14,
                            fontWeight:FontWeight.bold,
                            color:Colour('#008894'),
                            fontFamily: 'Segoe UI',
                          ),
                        ),
                      ),
                    ],
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
