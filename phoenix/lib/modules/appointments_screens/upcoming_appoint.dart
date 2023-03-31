import 'package:colour/colour.dart';
import 'package:date_picker_timetable/date_picker_timetable.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/doctorsdata_model.dart';
import 'package:phoenix/widgets/doctors_details.dart';
class Upcoming extends StatefulWidget {
  const Upcoming({Key? key}) : super(key: key);

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  List<DoctorsData> doctorAppoint=[
    DoctorsData(
      'assets/images/d1.jpg',
      'Aya Akram',
      'Therapist',
    ),
  ];

  DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();
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
            child: _selectedValue== null
                ? Padding(
              padding: const EdgeInsets.only(
                top:50,
                left: 115,
                right: 114,
              ),
              child: Text(
                'No appointments here yet !',
                style: TextStyle(
                  color:Colour('#5B5E60'),
                  fontSize:12,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Segoe UI',
                ),),
            )
                : Padding(
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
                   Padding(
                     padding: const EdgeInsets.only(
                       right: 0,
                       bottom: 20,
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(
                             bottom:4
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
                           width: 80,
                         ),
                         Padding(
                           padding: const EdgeInsets.only(
                             right: 24
                           ),
                           child: Row(
                             children: [
                               Icon(
                                 Icons.access_time_rounded,
                                 size:15,
                                 color:Colour('#5B5E60'),
                               ),
                               const SizedBox(
                                 width: 4,
                               ),
                               Text('${_selectedValue.year}',
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
