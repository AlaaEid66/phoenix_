
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:colour/colour.dart';
import 'package:phoenix/modules/bottom_navigationbar/bottomnav.dart';
import 'package:phoenix/registration/signUp.dart';
import 'package:phoenix/shared/components/component.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool ?passwordVisible = false;
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Form(
            key: formstate,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 140,
                    left: 140,
                    top: 88,
                    bottom: 16,
                  ),
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
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 80,
                    left: 135,
                    right: 135,
                  ),
                  child:Text(
                    'Sign In',
                    style:TextStyle(
                      color: Colour("#008894"),
                      fontSize: 40,
                      fontWeight:FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 36,
                    right: 35,
                    bottom: 12,
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
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colour('#000000').withOpacity(0.04),
                      ),
                      prefixIcon:const Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 36,
                    right: 35,
                  ),
                  child: Container(
                    color:Colour('#EFEFEF'),
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
                          color: Colour('#000000').withOpacity(0.04),
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
                    left: 226,
                    top: 6,
                    right: 41,
                  ),
                  child: TextButton(
                    child:Text(
                      'Forget Password?',
                      style:TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color:Colour('#505050'),
                      ),
                    ),
                    onPressed:(){},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 36,
                    right: 35,
                    top: 48,
                    bottom: 16,
                  ),
                  child: defButton(
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
                      onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>SignUp())),
                      child:Text(
                        'sign up',
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
