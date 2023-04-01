import 'dart:convert';

import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/appointments_screens/upcoming_appoint.dart';
import 'package:phoenix/modules/friends_screens/my_friends.dart';
import 'package:phoenix/modules/settings/about_us.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}


class _AppointmentState extends State<Appointment>
    with SingleTickerProviderStateMixin {
  TabController? tabController2;

  @override
  void initState() {
    tabController2 = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController2!.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                     const SizedBox(height: 30),
                      Container(
                        // height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                            color: Colour('#EFEFEF'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TabBar(
                                controller: tabController2,
                                unselectedLabelColor: Colour('#505050'),
                                labelColor: Colour('#008894'),
                                indicatorColor:Colour('#EFEFEF'),
                                indicatorWeight: 3,
                                indicator: BoxDecoration(
                                  color: Colour('#EFEFEF'),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                tabs:const [
                                  Tab(
                                    text: 'Upcoming',
                                  ),
                                  Tab(
                                    text: 'Completed',
                                  ),
                                  Tab(
                                    text: 'Canceled',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: tabController2,
                          children: const [
                            Upcoming(),
                            MyFriends(),
                            AboutUs(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
// Padding(
//   padding: EdgeInsets.symmetric(horizontal: 30),
//   child: Container(
//     height: MediaQuery.of(context).size.height,
//     child: Column(
//       children: [
//         SizedBox(height: 30),
//         Container(
//           // height: 50,
//           width: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//               color: Colour('#EFEFEF'),
//               borderRadius: BorderRadius.circular(20)),
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(5),
//                 child: TabBar(
//                   controller: tabController,
//                   unselectedLabelColor: Colour('#505050'),
//                   labelColor: Colour('#008894'),
//                   indicatorColor:Colour('#EFEFEF'),
//                   indicatorWeight: 2,
//                   indicator: BoxDecoration(
//                     color: Colour('#EFEFEF'),
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   tabs:const [
//                     Tab(
//                       text: 'Suggestions',
//                     ),
//                     Tab(
//                       text: 'Your Friends',
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 40,
//         ),
//         Expanded(
//           child: TabBarView(
//             controller: tabController,
//             children: const [
//               Suggestions(),
//               MyFriends(),
//             ],
//           ),
//         )
//       ],
//     ),
//   ),
// ),
}
// Padding(
//   padding: const EdgeInsets.only(
//     left: 28,
//     right: 27,
//     top: 20,
//   ),
//   child: Stack(
//     children: [
//       Container(
//         width: 320,
//         height: 40,
//         decoration: BoxDecoration(
//           color: Colour('#EFEFEF'),
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             //this is the filter tabs
//             for (FilterStatus filterStatus in FilterStatus.values)
//               Expanded(
//                 child: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       if (filterStatus == FilterStatus.Upcoming){
//                         status = FilterStatus.Upcoming;
//                         _alignment = Alignment.centerLeft;
//                       } else if (filterStatus ==
//                           FilterStatus.Completed) {
//                         status = FilterStatus.Completed;
//                         _alignment = Alignment.center;
//                       } else if (filterStatus ==
//                           FilterStatus.Canceled) {
//                         status = FilterStatus.Canceled;
//                         _alignment = Alignment.centerRight;
//                       }
//                     });
//                   },
//                   child: Center(
//                     child: Text(filterStatus.name,
//                       // style: TextStyle(
//                       //   color: Colour('#5B5E60'),
//                       //   fontSize:14,
//                       //   fontWeight: FontWeight.w500,
//                       //   fontFamily: 'Segoe UI'
//                       // ),
//                     ),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//       AnimatedAlign(
//         alignment: _alignment,
//         duration: const Duration(milliseconds: 200),
//         child: Container(
//           color: Colour(''),
//           width:68,
//           height: 19,
//           child: Center(
//             child: Text(
//               status.name,
//               style: TextStyle(
//                 color: Colour('#008894'),
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
