// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:colour/colour.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dropdownfield2/dropdownfield2.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:phoenix/login/signIn.dart';
import 'package:phoenix/modules/bottom_navigationbar/bottomnav.dart';
import 'package:phoenix/shared/components/component.dart';



class SignUp extends StatefulWidget {
  const SignUp({super.key});



  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var password , email,phoneNum,gender,dateOfBirth;
  bool? passwordVisible = false;
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
      child: Scaffold(
        backgroundColor:Colors.white,
        body: SingleChildScrollView(
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
                        labelText: 'E-mail',
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
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                        color:Colour('#EFEFEF'),
                        child: TextFormField(
                          controller: genderSelected,
                          textInputAction: TextInputAction.next,
                          keyboardType:TextInputType.text,
                          decoration:InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(10),
                            ),
                            labelText: 'Gender',
                            labelStyle: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize:18,
                                fontWeight: FontWeight.normal,
                                color: Colour('#000000').withOpacity(0.4)
                            ),
                            suffixIcon:IconButton(
                              icon: const Icon(Icons.arrow_drop_down_sharp),
                              onPressed:(){
                                setState(() {
                                  displayGenderList=!displayGenderList;
                                });
                              },
                              iconSize:24,
                              color:Colour('#000000').withOpacity(0.4),
                            ),
                            prefixIcon:Icon(
                              Icons.transgender_sharp,
                              size: 25,
                              color: Colour('#000000').withOpacity(0.4),
                            ),
                          ),
                        ),
                      ),
                      displayGenderList?
                      Container(
                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                          color:Colour('#EFEFEF'),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListView.builder(
                          itemCount: genderList.length,
                          itemBuilder: ((context,index){
                            return ListTile(
                              onTap:(){
                                setState(() {
                                  genderSelected.text=(genderList[index]).toString();
                                });
                              },
                              title:Text(genderList[index],
                                style:TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize:18,
                                  fontWeight: FontWeight.normal,
                                  color: Colour('#000000').withOpacity(0.4),
                                ),
                              ),
                            );
                          }),
                        ),
                      ):SizedBox(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                  ),
                  child: Container(
                    color:Colour('#EFEFEF'),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType:TextInputType.number,
                      decoration:InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                        ),
                        labelText: 'Date of birth',
                        labelStyle: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                          fontWeight: FontWeight.normal,
                          color: Colour('#000000').withOpacity(0.4)
                        ),
                        prefixIcon:Icon(
                          Icons.calendar_month_outlined,
                          size: 25,
                          color: Colour('#000000').withOpacity(0.4),
                        ),
                      ),
                    ),
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
                      onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>SignIn())),
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
           ],
            ),
          ),
        ),
      ),
    );
  }
}
