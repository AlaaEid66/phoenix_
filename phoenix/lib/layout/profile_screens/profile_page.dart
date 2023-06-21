import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phoenix/interface.dart';
import 'package:phoenix/layout/profile_screens/edit_profile.dart';
import 'package:phoenix/modules/appointments_screens/appointments.dart';
import 'package:phoenix/modules/doctors_screens/doctors.dart';
import 'package:phoenix/modules/friends_screens/your_friends.dart';
import 'package:phoenix/modules/groups/group.dart';
import 'package:phoenix/modules/messages/messages_screen.dart';
import 'package:phoenix/modules/photo_detection/upload_image.dart';
import 'package:phoenix/models/postdata_model.dart';
import 'package:phoenix/widgets/profile.dart';
import 'package:phoenix/modules/save_items/saved_items.dart';
import 'package:phoenix/modules/settings/setting_page.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<PostDataProfile> profile=[
    PostDataProfile(
        'assets/images/s1.jpg',
        'Noah Talb'
    )
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top:30,
        ),
        child: Scaffold(
          backgroundColor: Colour('#FFFFFF'),
          appBar: AppBar(
            elevation: 0,
            backgroundColor:Colour('#FFFFFF') ,
           centerTitle:true,
            title:Text(
              'My Profile',
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
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Center(child: profileData(profile[0], context)),
                 const SizedBox(
                   height: 8,
                 ),
                 Container(
                   width: 120,
                   height: 40,
                   decoration: BoxDecoration(
                     color:Colour('#008894'),
                     borderRadius:BorderRadius.circular(10),
                   ),
                   child: MaterialButton(
                     onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=> const EditProfile())),
                     child: Text('Edit profile',
                       style:TextStyle(
                         color:Colour('#FFFFFF'),
                         fontSize: 16,
                         fontFamily:'Segoe UI',
                         fontWeight: FontWeight.bold,
                ),
              ),

              ),
          ),
                 const SizedBox(
                   height: 33,
                 ),
                 Card(
                   color: Colour('#EFEFEF'),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 18,
                             ),
                             child: Icon(Icons.mail_sharp,
                               color: Colour('#505050'),
                                 size: 24,
                             ),
                           ),
                           const SizedBox(
                             width: 8,
                           ),
                           Text(
                             'Messages',
                             style:TextStyle(
                               color: Colour('#505050'),
                               fontWeight: FontWeight.bold,
                               fontFamily: 'Segoe UI',
                               fontSize:18,
                             ),
                           ),
                           SizedBox(
                             width:MediaQuery.of(context).size.width*0.51,
                           ),
                           IconButton(
                             onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=> const Messages())),
                             icon:const Icon(Icons.arrow_forward_ios_rounded),
                             color:Colour('#505050'),
                             iconSize: 24,
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 18,
                             ),
                             child: Icon(Icons.photo_size_select_large,
                               color: Colour('#505050'),
                               size: 24,
                             ),
                           ),
                           const SizedBox(
                             width: 4,
                           ),
                           Text(
                             'Degree of burn',
                             style:TextStyle(
                               color: Colour('#505050'),
                               fontWeight: FontWeight.bold,
                               fontFamily: 'Segoe UI',
                               fontSize:18,
                             ),
                           ),
                           SizedBox(
                             width:MediaQuery.of(context).size.width*0.40,
                           ),
                           IconButton(
                             onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=> const UploadImage())),
                             icon:const Icon(Icons.arrow_forward_ios_rounded),
                             color:Colour('#505050'),
                             iconSize: 24,
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 18,
                             ),
                             child: Icon(Icons.group,
                               color: Colour('#505050'),
                               size: 24,
                             ),
                           ),
                           const SizedBox(
                             width: 10,
                           ),
                           Text(
                             'Friends',
                             style:TextStyle(
                               color: Colour('#505050'),
                               fontWeight: FontWeight.bold,
                               fontFamily: 'Segoe UI',
                               fontSize:18,
                             ),
                           ),
                           SizedBox(
                             width:MediaQuery.of(context).size.width*0.55,
                           ),
                           IconButton(
                             onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=> const FriendsPage())),
                             icon:const Icon(Icons.arrow_forward_ios_rounded),
                             color:Colour('#505050'),
                             iconSize: 24,
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 18,
                             ),
                             child: Icon(Icons.groups,
                               color: Colour('#505050'),
                               size: 24,
                             ),
                           ),
                           const SizedBox(
                             width: 4,
                           ),
                           Text(
                             'Communities(Groups)',
                             style:TextStyle(
                               color: Colour('#505050'),
                               fontWeight: FontWeight.bold,
                               fontFamily: 'Segoe UI',
                               fontSize:18,
                             ),
                           ),
                           SizedBox(
                             width:MediaQuery.of(context).size.width*0.24,
                           ),
                           IconButton(
                             onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const Groups())),
                             icon:const Icon(Icons.arrow_forward_ios_rounded),
                             color:Colour('#505050'),
                             iconSize: 24,
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(
                   height: 6,
                 ),
                 Card(
                   color: Colour('#EFEFEF'),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 18,
                             ),
                             child: Icon(FontAwesomeIcons.stethoscope,
                               color: Colour('#505050'),
                               size: 24,
                             ),
                           ),
                           const SizedBox(
                             width: 5,
                           ),
                           Text(
                             'Doctors',
                             style:TextStyle(
                               color: Colour('#505050'),
                               fontWeight: FontWeight.bold,
                               fontFamily: 'Segoe UI',
                               fontSize:18,
                             ),
                           ),
                           SizedBox(
                             width:MediaQuery.of(context).size.width*0.54,
                           ),
                           IconButton(
                             onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(_)=> const Doctors())),
                             icon:const Icon(Icons.arrow_forward_ios_rounded),
                             color:Colour('#505050'),
                             iconSize: 24,
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 18,
                             ),
                             child: Icon(Icons.calendar_month_outlined,
                               color: Colour('#505050'),
                               size: 24,
                             ),
                           ),
                           const SizedBox(
                             width: 4,
                           ),
                           Text(
                             'My appointments',
                             style:TextStyle(
                               color: Colour('#505050'),
                               fontWeight: FontWeight.bold,
                               fontFamily: 'Segoe UI',
                               fontSize:18,
                             ),
                           ),
                           SizedBox(
                             width:MediaQuery.of(context).size.width*0.33,
                           ),
                           IconButton(
                             onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=> const Appointment())),
                             icon:const Icon(Icons.arrow_forward_ios_rounded),
                             color:Colour('#505050'),
                             iconSize: 24,
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(
                   height: 6,
                 ),
                 Card(
                   color: Colour('#EFEFEF'),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 18,
                             ),
                             child: Icon(Icons.bookmark,
                               color: Colour('#505050'),
                               size: 24,
                             ),
                           ),
                           const SizedBox(
                             width: 4,
                           ),
                           Text(
                             'Saved items',
                             style:TextStyle(
                               color: Colour('#505050'),
                               fontWeight: FontWeight.bold,
                               fontFamily: 'Segoe UI',
                               fontSize:18,
                             ),
                           ),
                           SizedBox(
                             width:MediaQuery.of(context).size.width*0.45,
                           ),
                           IconButton(
                             onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const SavedItems())),
                             icon:const Icon(Icons.arrow_forward_ios_rounded),
                             color:Colour('#505050'),
                             iconSize: 24,
                           ),
                         ],
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                               left: 18,
                             ),
                             child: Icon(Icons.settings,
                               color: Colour('#505050'),
                               size: 24,
                             ),
                           ),
                           const SizedBox(
                             width: 4,
                           ),
                           Text(
                             'Setting',
                             style:TextStyle(
                               color: Colour('#505050'),
                               fontWeight: FontWeight.bold,
                               fontFamily: 'Segoe UI',
                               fontSize:18,
                             ),
                           ),
                           SizedBox(
                             width:MediaQuery.of(context).size.width*0.55,
                           ),
                           IconButton(
                             onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const Setting())),
                             icon:const Icon(Icons.arrow_forward_ios_rounded),
                             color:Colour('#505050'),
                             iconSize: 24,
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                 const SizedBox(
                   height: 6,
                 ),
                 Card(
                   color: Colour('#EFEFEF'),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(
                           left: 18,
                         ),
                         child: Icon(Icons.logout,
                           color: Colour('#505050'),
                           size: 24,
                         ),
                       ),
                       const SizedBox(
                         width: 4,
                       ),
                       TextButton(
                         onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const Interface())),
                         child: Text(
                           'Logout',
                           style:TextStyle(
                             color: Colour('#505050'),
                             fontWeight: FontWeight.bold,
                             fontFamily: 'Segoe UI',
                             fontSize:18,
                           ),
                         ),
                       ),
                       SizedBox(
                         width:MediaQuery.of(context).size.width*0.51,
                       ),
                       IconButton(
                         onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=> const Interface())),
                         icon:const Icon(Icons.arrow_forward_ios_rounded),
                         color:Colour('#505050'),
                         iconSize: 24,
                       ),
                     ],
                   ),
                 ),
                const SizedBox(
                   height: 55,
                 ),
               ],
             ),
           ),
        ),
      ),
    );
  }
}
