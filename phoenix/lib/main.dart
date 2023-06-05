import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:phoenix/onboarding_screens/onboarding_screen.dart';

void main() {

  runApp(DevicePreview(
      builder:(context)=> const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context,child){
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: Colour('#FFFFFF'),
            appBarTheme: AppBarTheme(
              backgroundColor: Colour('#FFFFFF'),
              elevation: 0.0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: Colour('#505050'),
                fontFamily: 'Segoe UI',
                fontSize: 18,
                fontWeight:FontWeight.bold,
              )
            ),
          ),
          builder:DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),);
      },
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool? isLoading = false;
  @override
  void initState()
  {
    super.initState();
    Future.delayed(const Duration(seconds: 1),
            ()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const OnBoardingScreen())));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/p0.jpg'),
            fit: BoxFit.cover,
          ),),
        child: Padding(
          padding: const EdgeInsets.only(top: 400),
          child:MaterialButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(_)=>const OnBoardingScreen()));

            },
            child: CircularProgressIndicator(
              backgroundColor:Colour('#FFFFFF'),
              color:Colour('#FFFFFF'),),
          ),
        ),

      ),
    );
  }
}


