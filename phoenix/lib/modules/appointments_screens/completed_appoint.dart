import 'package:colour/colour.dart';
import 'package:date_picker_timetable/date_picker_timetable.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/doctorsdata_model.dart';
import 'package:phoenix/widgets/doctors_details.dart';
class Completed extends StatefulWidget {
  const  Completed({Key? key}) : super(key: key);

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  List<DoctorsData> doctorAppoint=[
    DoctorsData(
      'assets/images/d1.jpg',
      'Aya Akram',
      'Therapist',
    ),
  ];

  final DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();
  TimeOfDay selectedTime1 = const TimeOfDay(hour: 00, minute: 00);
  TimeOfDay selectedTime2 = const TimeOfDay(hour: 00, minute: 00);
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        selectedTime1= value!;
      });
    });
  }
  void _showTimePicker2() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        selectedTime2= value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DatePicker(
            DateTime.now(),
            initialSelectedDate: DateTime.now(),
            selectionColor: Colour('#F0FBFC'),
            selectedTextColor: Colour('#008894'),
            controller: _controller,
            deactivatedColor:Colour('#5B5E60'),
            dateTextStyle:const TextStyle(
                fontSize: 14,
                fontWeight:FontWeight.w500,
                fontFamily: 'Segoe UI'
            ),
            monthTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight:FontWeight.w500,
                fontFamily: 'Segoe UI'
            ),
            dayTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight:FontWeight.w500,
                fontFamily: 'Segoe UI'
            ),
            animateToSelection: true,
            onDateChange: (date) {
              // New date selected
              setState(() {
                _selectedValue = date;
              });
            },
          ),
          Container(
            child:  Padding(
              padding: const EdgeInsets.only(
                top: 64,
              ),
              child: Container(
                width: 302,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colour('#F0FBFC')
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    doctor(doctorAppoint[0], context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              top: 17,
                              end: 40
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                size:15,
                                color:Colour('#5B5E60'),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text('${_selectedValue.day}',
                                style:TextStyle(
                                  color: Colour('#5B5E60'),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Segoe UI',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              bottom: 2,
                              end: 10
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: _showTimePicker,
                                icon: Icon(
                                  Icons.access_time_rounded,
                                  size:15,
                                  color:Colour('#5B5E60'),
                                ),
                              ),
                              Text(selectedTime1.format(context).toString(),
                                style:TextStyle(
                                  color: Colour('#5B5E60'),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Segoe UI',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child:  Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Container(
                width: 302,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colour('#F0FBFC')
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    doctor(doctorAppoint[0], context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            top: 17,
                            end: 40
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                size:15,
                                color:Colour('#5B5E60'),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text('${_selectedValue.day}',
                                style:TextStyle(
                                  color: Colour('#5B5E60'),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Segoe UI',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            bottom: 2,
                            end: 10
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: _showTimePicker2,
                                icon: Icon(
                                  Icons.access_time_rounded,
                                  size:15,
                                  color:Colour('#5B5E60'),
                                ),
                              ),
                              Text(selectedTime2.format(context).toString(),
                                style:TextStyle(
                                  color: Colour('#5B5E60'),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Segoe UI',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
