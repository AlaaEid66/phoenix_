
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
                child:Image.asset('${doctorsData.doctorUrlAvatar}',fit: BoxFit.cover,),
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
Widget doctorProfile(DoctorsDataProfile doctorsDataProfile,BuildContext context){
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 100,
            right: 6,
          ),
          child: Row(
            children: [
              Icon(Icons.star,
                size: 20,
                color: Colour('#FFC107'),
              ),
              Text('${doctorsDataProfile.doctorRating}',
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                  color: Colour('#5B5E60'),
                  fontFamily: 'Segoe UI'
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 2,
            right: 20,
            left: 20,
          ),
          child: Container(
            width: 88,
            height: 88,
            decoration: BoxDecoration(
              border:Border.all(color:Colour('#008894'),width:2),
              borderRadius:BorderRadius.circular(50),
              image: DecorationImage(
                image:AssetImage('${doctorsDataProfile.doctorUrlAvatarProfile}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 34,
            right: 34
          ),
          child: Text('${doctorsDataProfile.doctorNameProfile}',
            style: TextStyle(
              color: Colour('#505050'),
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Segoe UI'
            ),
          ),
        ),
        SizedBox(
          height:MediaQuery.of(context).size.height*0.0001,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 50,
              right: 20
          ),
          child: Text('${doctorsDataProfile.doctorDescProfile}',
            style: TextStyle(
                color: Colour('#008894'),
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily: 'Segoe UI'
            ),
          ),
        ),
      ],
    ),
  );
}


Widget doctorPage(DoctorsDataPage doctorsDataPage,BuildContext context){
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 100,
            right: 6,
          ),
          child: Row(
            children: [
              Icon(Icons.star,
                size: 20,
                color: Colour('#FFC107'),
              ),
              Text('${doctorsDataPage.doctorRating}',
                style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: Colour('#5B5E60'),
                    fontFamily: 'Segoe UI'
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 2,
            right: 20,
            left: 20,
          ),
          child: Container(
            width: 88,
            height: 88,
            decoration: BoxDecoration(
              border:Border.all(color:Colour('#008894'),width:2),
              borderRadius:BorderRadius.circular(50),
              image: DecorationImage(
                image:AssetImage('${doctorsDataPage.doctorUrlAvatarProfile}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 34,
              right: 34
          ),
          child: Text('${doctorsDataPage.doctorNameProfile}',
            style: TextStyle(
                color: Colour('#505050'),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Segoe UI'
            ),
          ),
        ),
        SizedBox(
          height:MediaQuery.of(context).size.height*0.0001,
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 50,
              right: 20
          ),
          child: Text('${doctorsDataPage.doctorDescProfile}',
            style: TextStyle(
                color: Colour('#008894'),
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily: 'Segoe UI'
            ),
          ),
        ),
      ],
    ),
  );
}
