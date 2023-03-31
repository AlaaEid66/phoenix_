
import 'package:colour/colour.dart';
import 'package:phoenix/models/doctorsdata_model.dart';
import 'package:flutter/material.dart';
Widget doctor(DoctorsData doctorsData,BuildContext context){
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                right: 20,
              ),
              child: Container(
                width: 96,
                height: 130,
                child:Image.asset('assets/images/s1.jpg',fit: BoxFit.cover,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 40,
                bottom: 1,
              ),
              child: Column(
                children: [
                  Text('${doctorsData.doctorName}'),
                  SizedBox(
                    height:MediaQuery.of(context).size.height*0.0001,
                  ),
                  Text('${doctorsData.doctorDesc}'),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}