import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:phoenix/modules/posts/comments.dart';
import 'package:phoenix/widgets/post.dart';
import 'package:phoenix/models/postdata_model.dart';
class WatchVideos extends StatefulWidget {
  const WatchVideos({Key? key}) : super(key: key);

  @override
  State<WatchVideos> createState() => _WatchVideosState();
}

class _WatchVideosState extends State<WatchVideos> {
  List<PostData> videos=[
    PostData(
      'assets/images/s1.jpg',
      'Ali Mahros',
      '10 Oct . 2022',
      'assets/images/v1.jpg',
      60 ,
      30,
      '',
    ),
    PostData(
      'assets/images/s1.jpg',
      'Ali Emam',
      '10 Oct . 2022',
      'assets/images/v2.jpg',
      120 ,
      880,
      '',
    ),
    PostData(
      'assets/images/s1.jpg',
      'Ahmed Mahdy',
      '10 Oct . 2022',
      'assets/images/v3.jpg',
      90 ,
      100,
      '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colour('#FFFFFF'),
          centerTitle: true,
          title: Text('Watch!',
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
        backgroundColor: Colour('#FFFFFF'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                 postVideos(videos[0], context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        LikeButton(
                          size: 20,
                          circleColor:
                          CircleColor(start: Colour('#505050'), end: Colour('#0066CC')),
                          bubblesColor: const BubblesColor(
                            dotPrimaryColor: Color(0xff33b5e5),
                            dotSecondaryColor: Color(0xff0099cc),
                          ),
                          likeBuilder: (bool isLiked) {
                            return Icon(
                              Icons.thumb_up_alt_outlined,
                              color: isLiked ?  Colour('#0066CC') : Colour('#505050'),
                              size: 20,
                            );
                          },
                          likeCount: videos[0].postLikes,
                          countBuilder: (int? count, bool isLiked, String text) {
                            var color = isLiked ?  Colour('#0066CC') : Colour('#505050');
                            Widget result;
                            if (count == 0) {
                              result = Text(
                                "like",
                                style: TextStyle(color: color),
                              );
                            } else {
                              result = Text(
                                text,
                                style: TextStyle(color: color),
                              );
                            }
                            return result;
                          },
                        ),
                        // IconButton(
                        //   icon:const Icon(Icons.thumb_up_alt_rounded,
                        //     size: 20,
                        //   ),
                        //   color: Colour('#505050'),
                        //   onPressed:(){} ,
                        // ),
                        // Text('Like',
                        //   style: TextStyle(
                        //     fontWeight: FontWeight.w500,
                        //     fontFamily: 'Segoe UI',
                        //     color:Colour('#505050'),
                        //     fontSize: 14,
                        //   ),
                        // ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${videos[0].postComments}'),
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
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.002,
                ),
                postVideos(videos[1], context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        LikeButton(
                          size: 20,
                          circleColor:
                          CircleColor(start: Colour('#505050'), end: Colour('#0066CC')),
                          bubblesColor: const BubblesColor(
                            dotPrimaryColor: Color(0xff33b5e5),
                            dotSecondaryColor: Color(0xff0099cc),
                          ),
                          likeBuilder: (bool isLiked) {
                            return Icon(
                              Icons.thumb_up_alt_outlined,
                              color: isLiked ?  Colour('#0066CC') : Colour('#505050'),
                              size: 20,
                            );
                          },
                          likeCount: videos[1].postLikes,
                          countBuilder: (int? count, bool isLiked, String text) {
                            var color = isLiked ?  Colour('#0066CC') : Colour('#505050');
                            Widget result;
                            if (count == 0) {
                              result = Text(
                                "like",
                                style: TextStyle(color: color),
                              );
                            } else {
                              result = Text(
                                text,
                                style: TextStyle(color: color),
                              );
                            }
                            return result;
                          },
                        ),
                        // IconButton(
                        //   icon:const Icon(Icons.thumb_up_alt_rounded,
                        //     size: 20,
                        //   ),
                        //   color: Colour('#505050'),
                        //   onPressed:(){} ,
                        // ),
                        // Text('Like',
                        //   style: TextStyle(
                        //     fontWeight: FontWeight.w500,
                        //     fontFamily: 'Segoe UI',
                        //     color:Colour('#505050'),
                        //     fontSize: 14,
                        //   ),
                        // ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${videos[0].postComments}'),
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
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.002,
                ),
                postVideos(videos[2], context),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        LikeButton(
                          size: 20,
                          circleColor:
                          CircleColor(start: Colour('#505050'), end: Colour('#0066CC')),
                          bubblesColor: const BubblesColor(
                            dotPrimaryColor: Color(0xff33b5e5),
                            dotSecondaryColor: Color(0xff0099cc),
                          ),
                          likeBuilder: (bool isLiked) {
                            return Icon(
                              Icons.thumb_up_alt_outlined,
                              color: isLiked ?  Colour('#0066CC') : Colour('#505050'),
                              size: 20,
                            );
                          },
                          likeCount: videos[2].postLikes,
                          countBuilder: (int? count, bool isLiked, String text) {
                            var color = isLiked ?  Colour('#0066CC') : Colour('#505050');
                            Widget result;
                            if (count == 0) {
                              result = Text(
                                "like",
                                style: TextStyle(color: color),
                              );
                            } else
                              result = Text(
                                text,
                                style: TextStyle(color: color),
                              );
                            return result;
                          },
                        ),
                        // IconButton(
                        //   icon:const Icon(Icons.thumb_up_alt_rounded,
                        //     size: 20,
                        //   ),
                        //   color: Colour('#505050'),
                        //   onPressed:(){} ,
                        // ),
                        // Text('Like',
                        //   style: TextStyle(
                        //     fontWeight: FontWeight.w500,
                        //     fontFamily: 'Segoe UI',
                        //     color:Colour('#505050'),
                        //     fontSize: 14,
                        //   ),
                        // ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${videos[2].postComments}'),
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
