import 'dart:convert';

import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  Future<void> getAppointments() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token') ?? '';
    // final appointment = await DioProvider().getAppointments(token);
    // if (appointment != 'Error') {
    //   setState(() {
    //     schedules = json.decode(appointment);
    //   });
    // }
  }

  @override
  void initState() {
    getAppointments();
    super.initState();
  }
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  right: 27,
                  top: 20,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 320,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colour('#EFEFEF'),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //this is the filter tabs
                          for (FilterStatus filterStatus in FilterStatus.values)
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (filterStatus == FilterStatus.Upcoming){
                                      status = FilterStatus.Upcoming;
                                      _alignment = Alignment.centerLeft;
                                    } else if (filterStatus ==
                                        FilterStatus.Completed) {
                                      status = FilterStatus.Completed;
                                      _alignment = Alignment.center;
                                    } else if (filterStatus ==
                                        FilterStatus.Canceled) {
                                      status = FilterStatus.Canceled;
                                      _alignment = Alignment.centerRight;
                                    }
                                  });
                                },
                                child: Center(
                                  child: Text(filterStatus.name,
                                    // style: TextStyle(
                                    //   color: Colour('#5B5E60'),
                                    //   fontSize:14,
                                    //   fontWeight: FontWeight.w500,
                                    //   fontFamily: 'Segoe UI'
                                    // ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    AnimatedAlign(
                      alignment: _alignment,
                      duration: const Duration(milliseconds: 200),
                      child: Container(
                        width:68,
                        height: 19,
                        child: Center(
                          child: Text(
                            status.name,
                            style: TextStyle(
                              color: Colour('#008894'),
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
      ),
    );
  }
}
