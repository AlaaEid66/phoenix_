import 'package:colour/colour.dart';
import 'package:date_picker_timetable/date_picker_timetable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

  final DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();
  var timeController = TextEditingController();
  var dateController = TextEditingController();
  TimeOfDay selectedTime = const TimeOfDay(hour: 00, minute: 00);
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
         timeController.text= value!.format(context).toString();
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
                dateController.text=DateFormat.MMMd().format(date).toString();
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
               width: 300,
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
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsetsDirectional.only(
                           start: 100,
                           top: 12,
                         ),
                         child: Row(
                           children: [
                             Icon(
                               Icons.calendar_month_outlined,
                               size:15,
                               color:Colour('#5B5E60'),
                             ),
                             const SizedBox(
                               width: 2,
                             ),

                             Text(dateController.text,
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
                         width: 30,
                       ),
                       Padding(
                         padding: const EdgeInsetsDirectional.only(
                           start: 4,
                           bottom: 2,
                         ),
                         child: Row(
                           children: [
                             IconButton(
                               onPressed: _showTimePicker,
                               icon: Icon(
                                 Icons.access_time_rounded,
                                 size:12,
                                 color:Colour('#5B5E60'),
                               ),
                             ),
                             const SizedBox(
                               width: 4,
                             ),
                             Text(timeController.text,
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
