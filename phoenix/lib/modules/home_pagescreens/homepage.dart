import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/posts/post.dart';
import 'package:phoenix/modules/posts/postdata.dart';
import 'package:phoenix/modules/posts/write_post.dart';
import 'package:phoenix/modules/stories/storydata.dart';
import 'package:phoenix/shared/components/component.dart';
import 'package:phoenix/modules/stories/story.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<StoryData> stories=[
    StoryData(
      'Seif',
      'assets/images/s1.jpg',
    ),
    StoryData(
      'Ali',
      'assets/images/s1.jpg',
     ),
    StoryData(
      'Youssef',
      'assets/images/s1.jpg',
    ),
    StoryData(
      'Yehia',
      'assets/images/s1.jpg',
    ),
    StoryData(
      'Younis',
       'assets/images/s1.jpg',
    ),
  ];
  List<StoryDataProfile> story=[
    StoryDataProfile(
      'Your Story',
      avatarUrlProfile: 'assets/images/s1.jpg',
    ),
  ];
  List<PostData> post=[
    PostData(
        'assets/images/s1.jpg',
        'Ali Magdy',
        '10 Oct . 2022',
        'The second degree of burns should be treated\nas soon as possible to reduce the risk of\ninfection and scarring.'),
  ];
  List<PostData> posts=[
    PostData(
        'assets/images/s1.jpg',
        'Ahmed Mahdy',
        '10 Oct . 2022',
        'assets/images/first-aid.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.029,
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
                        image: const DecorationImage(
                          image:AssetImage('assets/images/s1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width:MediaQuery.sizeOf(context).width*0.052,
                    ),
                    SizedBox(
                      width: 320,
                      height: 70,
                      child: TextFormField(
                        onTap:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const WritePost())),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.027,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          IconButton(
                            iconSize:18,
                            onPressed:(){},
                            icon: Icon(Icons.videocam_outlined,color:Colour('#707070')),
                          ),
                          Text(
                            'Live',
                            style: TextStyle(
                              textBaseline:TextBaseline.alphabetic,
                              fontFamily:'Segoe UI',
                              fontSize:12,
                              color: Colour('#505050'),
                              fontWeight:FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.04,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed:(){},
                            iconSize: 16,
                            icon:Icon(Icons.add_a_photo),
                            color:Colour('#505050'),
                          ),
                          Text(
                            'Photo/video',
                            style: TextStyle(
                              textBaseline:TextBaseline.alphabetic,
                              fontFamily:'Segoe UI',
                              fontSize:12,
                              color: Colour('#505050'),
                              fontWeight:FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.04,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed:(){},
                            iconSize: 16,
                            icon:Icon(Icons.mood),
                            color:Colour('#505050'),
                          ),
                          Text(
                            'feeling',
                            style: TextStyle(
                              textBaseline:TextBaseline.alphabetic,
                              fontFamily:'Segoe UI',
                              fontSize:12,
                              color: Colour('#505050'),
                              fontWeight:FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.05,
                    ),
                    defButton(
                      border:8,
                      backgroundColor:Colour('#008894'),
                      pressed:(){},
                      text:'post',
                      height: 26,
                      width:60,
                    ),
                  ],
                ),
                postWritten(post[0], context),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.002,
                ),
                postImage(posts[0], context),
              ],
            ),
          ),
        ),
      ),
    );
  }

}