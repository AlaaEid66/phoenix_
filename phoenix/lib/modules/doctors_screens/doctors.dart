import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/doctorsdata_model.dart';
import 'package:phoenix/modules/doctors_screens/doctor_profile.dart';
import 'package:phoenix/widgets/doctors_details.dart';
class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  List<DoctorsDataProfile> doctors=[
    DoctorsDataProfile(
      3.3,
      'assets/images/d1.jpg',
      'Aya Akram',
      'Therapist',
    ),
    DoctorsDataProfile(
      3.9,
      'assets/images/d2.jpg',
      'Hania Emad',
      'Therapist',
    ),
    DoctorsDataProfile(
      3.7,
      'assets/images/d3.jpg',
      'Laila Ahmed',
      'Therapist',
    ),
    DoctorsDataProfile(
      3.2,
      'assets/images/d4.jpg',
      'Logy Amr',
      'Therapist',
    ),
    DoctorsDataProfile(
      4,
      'assets/images/d5.jpg',
      'Karim Ali',
      'Therapist',
    ),
    DoctorsDataProfile(
      3.8,
      'assets/images/d6.jpg',
      'Loay Amr',
      'Therapist',
    ),
    DoctorsDataProfile(
      3.5,
      'assets/images/d7.jpg',
      'Haya Noah',
      'Therapist',
    ),
    DoctorsDataProfile(
      3.1,
      'assets/images/d8.jpg',
      'Nour Ali',
      'Therapist',
    ),
    DoctorsDataProfile(
      4,
      'assets/images/d10.jpg',
      'Lamis Nour',
      'Therapist',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Scaffold(
          appBar: AppBar(
            title:const Text('Doctors',),
            leading:IconButton(
              color:Colour('#000000').withOpacity(0.5),
              onPressed:()=>Navigator.pop(context),
              icon:const Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20,
                    right: 19,
                    top: 20,
                    bottom: 8
                ),
                child: Container(
                  width: 336,
                  height: 36,
                  color:Colour('#EFEFEF'),
                  child: TextFormField(
                    decoration:InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        left: 16,
                        bottom: 10
                      ),
                      border: InputBorder.none,
                      focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide:BorderSide(
                            color:Colour('#EFEFEF'),
                            width: 0,
                          )
                      ),
                      hintText:'Search by name..',
                      hintStyle:TextStyle(
                        fontSize: 16,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.normal,
                        color: Colour('#505050'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[0], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[5], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[1], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[7], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[2], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[6], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[3], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[5], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[4], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      color: Colour('#FFFFFF'),
                      child: Column(
                        children: [
                          doctorProfile(doctors[8], context),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              right:8,
                              left: 8,
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateColor.resolveWith((states) =>Colour('#008894')),
                              ),
                              onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const DoctorPage())),
                              child: Text('Book appointment',
                                style: TextStyle(
                                  color: Colour('#FFFFFF'),
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
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
      ),
    );
  }
}
