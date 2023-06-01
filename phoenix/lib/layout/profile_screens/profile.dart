import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:phoenix/models/postdata_model.dart';
import 'package:phoenix/modules/posts/comments.dart';
import 'package:phoenix/modules/posts/share_posts.dart';
import 'package:phoenix/widgets/post.dart';
import 'package:phoenix/widgets/profile.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<PostDataProfile> profileP=[
    PostDataProfile(
        'assets/images/s1.jpg',
        'Noah Talb'
    )
  ];
  List<PostData> post=[
    PostData(
        'assets/images/s1.jpg',
        'Noah Talb',
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
        'Noah Talb',
        '10 Oct . 2022',
        'assets/images/first-aid.jpg',
        100,
        50,
        ''
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: profilePage(profileP[0], context)),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 40,
                  start: 8
                ),
                child: postWritten(post[0], context),
              ),
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
                        likeCount: post[0].postLikes,
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
                      Text('${post[0].postComments}'),
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
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: 40,
                    start: 8
                ),
                child: postImage(posts[0], context),
              ),
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
                        likeCount: post[0].postLikes,
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
                      Text('${post[0].postComments}'),
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
            ],
          ),
        ),
      ),
    );
  }
}
