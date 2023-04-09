import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/doctorsdata_model.dart';

class ScheduleDoctor extends StatefulWidget {
  const ScheduleDoctor({Key? key}) : super(key: key);

  @override
  State<ScheduleDoctor> createState() => _ScheduleDoctorState();
}

class _ScheduleDoctorState extends State<ScheduleDoctor> {
  int? _currentIndex;
  bool _isWeekend = false;
  bool _timeSelected = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colour('#FFFFFF') ,
      body:CustomScrollView(

        slivers: <Widget>[
          // SliverToBoxAdapter(
          //   child: Column(
          //     children: <Widget>[
          //
          //       const Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
          //         child: Center(
          //           child: Text(
          //             'Select Consultation Time',
          //             style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               fontSize: 20,
          //             ),
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          _isWeekend
              ? SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 30),
              alignment: Alignment.center,
              child:Text(
                'Weekend is not available, please select another date',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colour('#5B5E60'),
                ),
              ),
            ),
          )
              : SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                      _timeSelected = true;
                    });
                  },
                  child: Container(
                    width: 88,
                    height: 32,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: _currentIndex == index
                          ? Colour('#008894')
                          : Colour('#EFEFEF'),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${index+ 9}:00 ${index + 9 > 11? "PM" : "AM"}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:
                        _currentIndex == index ? Colour('#FFFFFF'):Colour('#5B5E60'),
                      ),
                    ),
                  ),
                );
              },
              childCount: 12,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 2),
          ),
        ],
      ),
    );
  }
}
