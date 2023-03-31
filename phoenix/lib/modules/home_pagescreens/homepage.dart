import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/posts/comments.dart';
import 'package:phoenix/modules/posts/share_posts.dart';
import 'package:phoenix/widgets/post.dart';
import 'package:phoenix/models/postdata_model.dart';
import 'package:phoenix/modules/posts/write_post.dart';
import 'package:phoenix/models/storydata_model.dart';
import 'package:phoenix/shared/components/component.dart';
import 'package:phoenix/widgets/story.dart';


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
        'The second degree of burns should be treated\nas soon as possible to reduce the risk of\ninfection and scarring.',
        100,
        450,
        ''
    ),
  ];
  List<PostData> posts=[
    PostData(
        'assets/images/s1.jpg',
        'Ahmed Mahdy',
        '10 Oct . 2022',
        'assets/images/first-aid.jpg',
        100,
       450,
       ''
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
                // Container(
                //    width: double.infinity,
                //    height:100,
                //    child: ListView(
                //      scrollDirection:Axis.horizontal,
                //      children: [
                //        storyButtonProfile(story[0], context),
                //        storyButton(stories[0], context),
                //        storyButton(stories[1], context),
                //        storyButton(stories[2], context),
                //        storyButton(stories[3], context),
                //        storyButton(stories[4], context),
                //        storyButton(stories[1], context),
                //        storyButton(stories[3], context),
                //        storyButton(stories[0], context),
                //      ],
                //    ),
                //  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),
                  child: Container(
                    width: 440,
                    height: 133,
                    decoration:BoxDecoration(
                      border:Border.all(color:Colour('#008894'),width:2),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 4,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  bottom: 1,
                                ),
                                child: Container(
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
                              ),
                              SizedBox(
                                width:MediaQuery.sizeOf(context).width*0.03,
                              ),
                              SizedBox(
                                width: 200,
                                height: 70,
                                child: TextFormField(
                                  onTap:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const WritePost())),
                                  decoration: InputDecoration(
                                    // focusedBorder: OutlineInputBorder(
                                    //   borderSide: BorderSide(color: Colour('#FFFFFF'),
                                    //     width: 0,
                                    //   ),
                                    // ),
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
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 16,
                            ),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Icon(Icons.videocam_outlined,color:Colour('#707070'),size: 18,),
                                      const SizedBox(
                                        width: 8,
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
                                  width:MediaQuery.of(context).size.width*0.01,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(Icons.add_a_photo,color:Colour('#707070'),size: 18,),
                                      const SizedBox(
                                        width: 8,
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
                                  width:MediaQuery.of(context).size.width*0.01,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(Icons.mood,color:Colour('#707070'),size: 18,),
                                      const SizedBox(
                                        width: 8,
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
                                  width:MediaQuery.of(context).size.width*0.012,
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.04,
                ),
                postWritten(post[0], context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text('50'),
                        IconButton(
                          icon:const Icon(Icons.thumb_up_alt_rounded,
                            size: 20,
                          ),
                          color: Colour('#505050'),
                          onPressed:(){} ,
                        ),
                        Text('Like',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Segoe UI',
                            color:Colour('#505050'),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('100'),
                        IconButton(
                          icon:  Icon(Icons.edit_note_rounded,
                            color:Colour('#505050') ,
                          ),
                          onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const Comments())),
                        ),
                        Text('Comment',
                          style: TextStyle(
                            color:Colour('#505050'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Segoe UI',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon:  Icon(Icons.share,
                            color:Colour('#505050') ,
                          ),
                          onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=> const SharePosts()))
                        ),
                        Text('Share',
                          style: TextStyle(
                            color:Colour('#505050'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Segoe UI',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.002,
                ),
                postImage(posts[0], context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text('50'),
                        IconButton(
                          icon:const Icon(Icons.thumb_up_alt_rounded,
                            size: 20,
                          ),
                          color: Colour('#505050'),
                          onPressed:(){} ,
                        ),
                        Text('Like',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Segoe UI',
                            color:Colour('#505050'),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('100'),
                        IconButton(
                          icon:  Icon(Icons.edit_note_rounded,
                            color:Colour('#505050') ,
                          ),
                          onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>const Comments())),
                        ),
                        Text('Comment',
                          style: TextStyle(
                            color:Colour('#505050'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Segoe UI',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon:  Icon(Icons.share,
                            color:Colour('#505050') ,
                          ),
                          onPressed:(){},),
                        Text('Share',
                          style: TextStyle(
                            color:Colour('#505050'),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Segoe UI',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}