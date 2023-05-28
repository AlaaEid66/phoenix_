// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:phoenix/login/signIn_user.dart';
import 'package:phoenix/layout/bottom_navigationbar/bottomnav.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
import 'package:phoenix/widgets/shared/components/size_config.dart';



class SignUpUser extends StatefulWidget {
  const SignUpUser({super.key});



  @override
  _SignUpUserState createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {

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
                     top: 50,
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
                    bottom: 30,
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
                    hint: 'Phone Number',
                  prefix: Icons.phone_iphone_rounded,
                ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 36,
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
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: width(context, 1.3),
                        height: height(context, 15),
                        decoration: BoxDecoration(
                          color: Colour('#EFEFEF'),
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                        height: height(context,7),
                        width: width(context,1.4),
                        decoration: BoxDecoration(
                          color:Colour('#EFEFEF'),
                          // borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListView.separated(
                          separatorBuilder:(context,index)=>Divider(
                            height: 1,
                            color: Colour('#000000').withOpacity(0.4),
                          ),
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
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 36,
                  ),
                  child: defaultFormField(
                  context: context,
                    textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                    hint: 'Date of birth',
                  prefix: Icons.calendar_month_outlined,
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
                    borderRadius:BorderRadius.circular(16),
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
                      onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>SignInUser())),
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
    );
  }
}
