
import 'dart:io';
import 'package:colour/colour.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider_ex2/path_provider_ex2.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
import 'package:phoenix/login/sign_in_doctor.dart';
import 'package:phoenix/layout/bottom_navigationbar/bottomnav.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:mime/mime.dart';
import 'package:phoenix/widgets/shared/components/size_config.dart';
import 'package:uuid/uuid.dart';



class SignUpDoctor extends StatefulWidget {
  const SignUpDoctor({super.key});



  @override
  _SignUpDoctorState createState() => _SignUpDoctorState();
}

class _SignUpDoctorState extends State<SignUpDoctor> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
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
  // void _openFile(PlatformFile file) {
  //   OpenFile.open(file.path);
  // }

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
        padding: const EdgeInsetsDirectional.only(
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
                    padding: const EdgeInsetsDirectional.only(
                      top: 40,
                    ),
                    child: Center(
                      child: Container(
                        height: height(context, 8),
                        width: height(context, 7),
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
                    padding: const EdgeInsetsDirectional.only(
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
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 36,
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
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 36,
                      vertical: 10,
                    ),
                    child:defaultFormField(
                      context: context,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      hint: 'Phone Number',
                      prefix: Icons.phone_iphone_rounded,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 36,
                    ),
                    child:defaultFormField(
                      context: context,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      hint: ' National ID ',
                      prefix: FontAwesomeIcons.solidIdCard,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 36,
                      vertical: 10,
                    ),
                    child: defaultFormField(
                      context: context,
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
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 36,
                        vertical: 3
                    ),
                    child: Container(
                        width: width(context, 1.3),
                        height: height(context, 15),
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
                          File(pdfFile!.path)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 36,
                      end: 35,
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
                    width: width(context, 1.3),
                    height: height(context, 15),
                    color:Colors.white60,
                    child: Material(
                      borderRadius:BorderRadius.circular(10),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: height(context, 30),
                                width: height(context, 16),
                                child:const Image(
                                  image:AssetImage('assets/images/pic2.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.symmetric(
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
                    padding:EdgeInsetsDirectional.only(
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



  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }
  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final path = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );
      _addMessage(_messages as types.Message);

    }
  }
}
