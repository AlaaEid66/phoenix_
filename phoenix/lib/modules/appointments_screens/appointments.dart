import 'package:colour/colour.dart';
import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}
  enum FilterStatus {Upcoming,Completed,Canceled}

class _AppointmentState extends State<Appointment> {
  FilterStatus status= FilterStatus.Upcoming;
  Alignment _alignment= Alignment.center;
  List<dynamic> schedules = [];
  @override
  Widget build(BuildContext context) {
    List<dynamic> filteredSchedules = schedules.where((var schedule) {
      switch (schedule['status']) {
        case 'upcoming':
          schedule['status'] = FilterStatus.Upcoming;
          break;
        case 'complete':
          schedule['status'] = FilterStatus.Completed;
          break;
        case 'cancel':
          schedule['status'] = FilterStatus.Canceled;
          break;
      }
      return schedule['status'] == status;
    }).toList();
    return Padding(
      padding: const EdgeInsets.only(
        top:60,
      ),
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        appBar: AppBar(
          elevation: 0,
          backgroundColor:Colour('#FFFFFF') ,
          centerTitle:true,
          title:Text(
            'My appointment',
            style:TextStyle(
              color: Colour('#505050'),
              fontFamily: 'Segoe UI',
              fontSize: 18,
              fontWeight:FontWeight.bold,
            ),
          ),
          leading:IconButton(
            color:Colour('#000000').withOpacity(0.5),
            onPressed:()=>Navigator.pop(context),
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: SingleChildScrollView(

        ),
      ),
    );
  }
}
