import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/doctorsdata_model.dart';
import 'package:phoenix/modules/doctors_screens/doctor_profile.dart';
class AboutDoctor extends StatefulWidget {
  const AboutDoctor({Key? key}) : super(key: key);

  @override
  State<AboutDoctor> createState() => _AboutDoctorState();
}

class _AboutDoctorState extends State<AboutDoctor> {
  List<DoctorsDetails> doctorExperience=[
    DoctorsDetails(
      3 ,
      4,
      'Sheraton,Hilopolice,Nile avon,el sheikh Zayed hospital',

    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colour('#FFFFFF') ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 10,
              ),
              child: Row(
                children: [
                  Text('Experience :',
                    style: TextStyle(
                      color:Colour('#505050'),
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  Text('${doctorExperience[0].yearExperience} years ago',
                    style: TextStyle(
                      color:Colour('#505050'),
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('work at ',
                    style: TextStyle(
                      color:Colour('#505050'),
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  Text('${doctorExperience[0].numOfHospitals} hospitals',
                    style: TextStyle(
                      color:Colour('#505050'),
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 10
              ),
              child: Text('(${doctorExperience[0].placesOfWork})',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color:Colour('#505050'),
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
