import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/doctorsdata_model.dart';
import 'package:phoenix/modules/doctors_screens/about_doctor.dart';
import 'package:phoenix/modules/doctors_screens/doctor_schedules.dart';
import 'package:phoenix/modules/doctors_screens/review_doctor.dart';
import 'package:phoenix/modules/friends_screens/my_friends.dart';
import 'package:phoenix/modules/friends_screens/suggertions.dart';
import 'package:phoenix/modules/search_screens/search.dart';
import 'package:phoenix/widgets/doctors_details.dart';
class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length:3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }
  List<DoctorsDataPage> doctorPage=[
    DoctorsDataPage(
      2.4,
      'assets/images/d1.jpg',
      'Haya Noah',
      'Dermatologist',
      'haya11@gmail.com',
      564235298,
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
          elevation: 0,
          backgroundColor:Colour('#FFFFFF') ,
          centerTitle:true,
          title:Padding(
            padding: const EdgeInsets.only(
              right: 150,
            ),
            child: Text(
              '${doctorPage[0].doctorNameProfile}',
              style:TextStyle(
                color: Colour('#505050'),
                fontFamily: 'Segoe UI',
                fontSize: 16,
                fontWeight:FontWeight.bold,
              ),
            ),
          ),
          leading:IconButton(
            color:Colour('#000000').withOpacity(0.5),
            onPressed:()=>Navigator.pop(context),
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        backgroundColor: Colour('#FFFFFF'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              doctorsPage(doctorPage[0], context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: Colour('#EFEFEF'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: TabBar(
                                controller: tabController,
                                unselectedLabelColor: Colour('#505050'),
                                labelColor: Colour('#FFFFFF'),
                                indicatorColor:Colour('#FFFFFF'),
                                indicatorWeight: 3,
                                indicator: BoxDecoration(
                                  color: Colour('#008894'),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                tabs: const [
                                  Tab(
                                    text: 'About',
                                  ),
                                  Tab(
                                    text: 'Reviews',
                                  ),
                                  Tab(
                                    text: 'Schedule',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: tabController,
                          children: const [
                            AboutDoctor(),
                            ReviewDoctor(),
                            ScheduleDoctor(),
                          ],
                        ),
                      ),
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
