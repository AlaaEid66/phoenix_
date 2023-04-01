import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
class ReviewDoctor extends StatefulWidget {
  const ReviewDoctor({Key? key}) : super(key: key);

  @override
  State<ReviewDoctor> createState() => _ReviewDoctorState();
}

class _ReviewDoctorState extends State<ReviewDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colour('#FFFFFF') ,
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
