import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
// import 'package:phoenix/modules/friends_screens/friendsdata_model.dart';
// import 'package:phoenix/modules/friends_screens/friends_page.dart';
import 'package:phoenix/modules/friends_screens/my_friends.dart';
import 'package:phoenix/modules/friends_screens/suggertions.dart';
// import 'package:phoenix/shared/components/component.dart';
// import 'package:buttons_tabbar/buttons_tabbar.dart';
class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage>
    with SingleTickerProviderStateMixin {
   TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }
  int current=0;
  List<String>labels =['Suggestions','Your friends'];
  List<String> items=[
    'Suggestion',
    'Your Friends'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top:40,
      ),
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        appBar: AppBar(
          elevation: 0,
          backgroundColor:Colour('#FFFFFF') ,
          centerTitle:true,
          title:Text(
            'My Friends',
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
                    left: 20,
                    right: 19,
                    top: 20,
                    bottom: 8
                ),
                child: Container(
                  width: 336,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colour('#EFEFEF'),
                  ),
                  child: TextFormField(

                    decoration:InputDecoration(
                      focusedBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:BorderSide(
                            color:Colour('#EFEFEF'),
                            width: 4,
                          )
                      ),
                      hintText:'Search',
                      hintStyle:TextStyle(
                        fontSize: 16,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.normal,
                        color: Colour('#505050'),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        // height: 50,
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: Colour('#EFEFEF'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TabBar(
                                controller: tabController,
                                unselectedLabelColor: Colour('#505050'),
                                labelColor: Colour('#008894'),
                                indicatorColor:Colour('#EFEFEF'),
                                indicatorWeight: 2,
                                indicator: BoxDecoration(
                                  color: Colour('#EFEFEF'),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                tabs:const [
                                  Tab(
                                    text: 'Suggestions',
                                  ),
                                  Tab(
                                    text: 'Your Friends',
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
                            Suggestions(),
                            MyFriends(),
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
// child: Column(
//   children: [

//     Container(
//       child: TabBar(
//         controller: tabController,
//         unselectedLabelColor: Colour('#505050'),
//         labelColor: Colour('#008894'),
//         indicatorColor: Colors.white,
//         indicatorWeight: 2,
//         indicator: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5),
//         ),
//         tabs: const [
//           Tab(
//             text: "Suggestions",
//           ),
//           Tab(
//             text: "Your friends",
//           ),
//         ],
//       ),
//     ),
//
//     // DefaultTabController(
//     //   length: 2,
//     //   child: Padding(
//     //     padding: const EdgeInsets.only(
//     //       left: 90,
//     //     ),
//     //     child: Row(
//     //       children: <Widget>[
//     //         ButtonsTabBar(
//     //           controller: tabController,
//     //           contentPadding: const EdgeInsets.only(
//     //             left: 15,
//     //             right: 15
//     //           ),
//     //           height: 46,
//     //           backgroundColor: Colour('#EFEFEF'),
//     //           unselectedLabelStyle: TextStyle(
//     //               color:Colour('#5B5E60'),
//     //               fontWeight:FontWeight.bold,
//     //               fontSize: 14,
//     //               fontFamily: 'Segoe UI',
//     //           ),
//     //           labelStyle:
//     //           TextStyle(
//     //               color:Colour('#008894'),
//     //               fontWeight:FontWeight.bold,
//     //             fontSize: 14,
//     //             fontFamily: 'Segoe UI',
//     //           ),
//     //           tabs: const [
//     //             Tab(
//     //               text: "Suggestions",
//     //             ),
//     //             Tab(
//     //               text: "Your friends",
//     //             ),
//     //           ],
//     //         ),
//     //         TabBarView(
//     //           controller: tabController,
//     //           children: [
//     //             Suggestions(),
//     //             MyFriends(),
//     //           ],
//     //         ),
//     //       ],
//     //     ),
//     //   ),
//     // ),
//     //
//
//
//
//     // SizedBox(
//     //   width: 320,
//     //   height: 80,
//     //   child: ListView.builder(
//     //     itemCount: items.length,
//     //     scrollDirection: Axis.horizontal,
//     //     itemBuilder:(context,index){
//     //       return GestureDetector(
//     //         onTap:(){
//     //           setState(() {
//     //             current=index;
//     //           });
//     //         },
//     //         child: Container(
//     //           margin: EdgeInsets.all(20),
//     //           width: 120,
//     //           height: 32,
//     //           decoration: BoxDecoration(
//     //             borderRadius: BorderRadius.circular(10),
//     //             color: Colour('#EFEFEF'),
//     //           ),
//     //           child: Center(
//     //             child: Text(
//     //                 items[index],
//     //               style: TextStyle(
//     //                 fontSize:14,
//     //                 fontWeight: FontWeight.bold,
//     //                 fontFamily: 'Segoe UI',
//     //                 color: current==index?Colour('#008894'):Colour('#5B5E60'),
//     //               ),
//     //             ),
//     //           ),
//     //         ),
//     //       );
//     //     },
//     //   ),
//     // ),
//     const SizedBox(
//       height: 10,
//     ),
//
//   ],
// ),
