import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/stories/storydata.dart';
import 'package:phoenix/shared/components/story.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<StoryData> stories=[
    StoryData(
      'Seif ali',
      'assets/images/s1.jpg',
    ),
    StoryData(
      'ali tarek',
      'assets/images/s1.jpg',
     ),
    StoryData(
      'yousef ramy',
      'assets/images/s1.jpg',
    ),
    StoryData(
      'younis ahmed',
      'assets/images/s1.jpg',
    ),
    StoryData(
      'yehia ali',
       'assets/images/s1.jpg',
    ),
    // StoryData(
    //   'raneem ahmed',
    //   "assets/images/s1.jpg",
    // ),
  ];
  List<StoryDataProfile> story=[
    StoryDataProfile(
      'YourStory',
      avatarUrlProfile: 'assets/images/s1.jpg',
    )
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                   width: double.infinity,
                   height:100,
                   child: ListView(
                     scrollDirection:Axis.horizontal,
                     children: [
                       storyButtonProfile(story[0], context),
                       storyButton(stories[0], context),
                       storyButton(stories[1], context),
                       storyButton(stories[2], context),
                       storyButton(stories[3], context),
                       storyButton(stories[4], context),
                       storyButton(stories[1], context),
                       storyButton(stories[3], context),
                       storyButton(stories[0], context),
                     ],
                   ),
                 ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width:40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50),
                        image: DecorationImage(
                          image:AssetImage('assets/images/s1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width:16,
                    ),
                    SizedBox(
                      width: 320,
                      height: 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText:'What\'s on your mind ?',
                          hintStyle:TextStyle(
                            color:Colour('#505050') ,
                            fontFamily:'Segoe UI',
                            fontSize:16,
                            fontWeight:FontWeight.normal,
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    IconButton(
                      iconSize:10,
                      onPressed:(){},
                      icon: Icon(Icons.ondemand_video,color:Colour('#505050')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ),
    );
  }

}