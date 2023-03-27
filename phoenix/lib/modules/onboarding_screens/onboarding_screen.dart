import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/interface.dart';
import 'package:phoenix/registration/signUp.dart';
import 'package:phoenix/shared/components/size_config.dart';
import 'onboarding1.dart';
import 'onboarding2.dart';
import 'onboarding3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>{
  List contents = [
    const  OnBoarding1(),
    const  OnBoarding2(),
    const OnBoarding3(),
  ];
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }
  int _currentPage = 0;

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(80),
        ),
        color:_currentPage==index?Colour('#008894'):Colour('#000000').withOpacity(0.16),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 14,
      curve: Curves.easeIn,
      width: 14,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colour('#FFFFFF'),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (value) => setState(() => _currentPage = value),
                  children:const[
                    OnBoarding1(),
                    OnBoarding2(),
                    OnBoarding3(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                          (int index) => _buildDots(
                        index: index,
                      ),
                    ),
                  ),
                  _currentPage + 1 == contents.length
                      ? Padding(
                    padding: const EdgeInsets.only(
                      top: 67,
                      right: 128,
                      left: 128,
                      bottom: 50,
                    ),
                    child: Container(
                      width: 119,
                      height: 37,
                      decoration: BoxDecoration(
                        color:Colour('#008894'),
                        borderRadius:BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const Interface())),

                        elevation: 1,
                        child:const Text("Start now!",
                          style:TextStyle(
                            color: Colors.white,
                            fontFamily:'Segoe UI',
                            fontSize:17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.only(
                      right: 39,
                      left: 30,
                      top: 54,
                      bottom: 68,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            _controller.jumpTo(0);

                          },
                          style: TextButton.styleFrom(
                            elevation: 0,
                            textStyle:const TextStyle(
                              fontFamily:'Segoe UI',
                              fontSize:18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: Text(
                            "Skip",
                            style: TextStyle(color: Colour('#008894')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 166,
                          ),
                          child: Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color:Colour('#008894'),
                              borderRadius:BorderRadius.circular(10),
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 2),
                                  curve: Curves.easeIn,
                                );
                              },
                              elevation: 1,
                              child:const Text("Next",
                                style:TextStyle(
                                  color: Colors.white,
                                  fontFamily:'Segoe UI',
                                  fontSize:18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}