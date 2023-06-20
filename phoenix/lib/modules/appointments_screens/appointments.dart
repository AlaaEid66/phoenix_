import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/appointments_screens/cancled_appoint.dart';
import 'package:phoenix/modules/appointments_screens/completed_appoint.dart';
import 'package:phoenix/modules/appointments_screens/upcoming_appoint.dart';


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
        appBar: AppBar(
          title:const Text('My appointment',),
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
                              padding: const EdgeInsets.all(5),
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
                            Completed(),
                            Canceled(),
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
}

