// ignore: file_names

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:colour/colour.dart';
import 'package:phoenix/layout/bottom_navigationbar/bottomnav.dart';
import 'package:phoenix/login/forget_password.dart';
import 'package:phoenix/registration/signUp_user.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
import 'package:phoenix/widgets/shared/components/size_config.dart';
class SignInUser extends StatefulWidget {
  const SignInUser({super.key});

  @override
  _SignInUserState createState() => _SignInUserState();
}

class _SignInUserState extends State<SignInUser> {
  bool ?passwordVisible = true;
  var email;
  var password;
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  GlobalKey<FormState>formstate = GlobalKey<FormState>();

  signIn()async{
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
      body:Form(
        key: formstate,
        child: Center(
          child: SingleChildScrollView(
            padding: mediaQueryData.viewInsets ,
            physics: const BouncingScrollPhysics(),
            reverse: true,
            child: Column(
              children: [
                Container(
                  width:width(context,2.5),
                  height:height(context,10),
                  child:const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image(
                      image:AssetImage('assets/images/logo.jpg'),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 40,
                    ),
                    child: Text(
                      'Sign In',
                      style:TextStyle(
                        color: Colour("#008894"),
                        fontSize: 32,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 36,
                    right: 35,
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
                  padding: const EdgeInsets.only(
                    left: 36,
                    right: 35,
                    bottom: 12,
                  ),
                    child: defaultFormField(
                      context: context,
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
                  padding: const EdgeInsets.only(
                    left: 226,
                    top: 3,
                    right: 41,
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
                    left: 36,
                    right: 35,
                    top: 40,
                    bottom: 16,
                  ),
                  child: defButton(
                   // width: 304,
                    backgroundColor: Colour('#008894'),
                    fontSize: 18,
                    text: 'Sign In',
                    pressed: ()async{
                      if(formstate.currentState!.validate()){
                        Navigator.push(context,MaterialPageRoute(builder:(_)=>BottomNav()));

                      }
                      UserCredential ?response = await signIn();
                      if(response != null){
                        print("Login Done");

                      }else{
                        print('Sign Up Failed');
                      }
                    },
                  ),
                ),
                Container(
                  width: 304,
                  height: 48,
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
                              width: 28,
                              height: 28,
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
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colour('#505050'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style:TextStyle(
                          fontSize:14,
                          fontWeight:FontWeight.normal,
                          fontFamily: 'Segoe UI'
                        ),
                      ),
                      TextButton(
                        onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const SignUpUser())),
                        child:Text(
                          'sign up',
                          style:TextStyle(
                            fontSize:14,
                            fontFamily: 'Segoe UI',
                            fontWeight:FontWeight.bold,
                            color:Colour('#008894'),
                          ),
                        ),
                      ),
                    ],
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
    );
  }

}
