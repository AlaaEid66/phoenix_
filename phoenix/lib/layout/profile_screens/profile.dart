import 'dart:io';

import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'package:like_button/like_button.dart';
import 'package:phoenix/layout/profile_screens/edit_profile.dart';
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
  List<PostDataProfile> profilePage=[
    PostDataProfile(
        'assets/images/user.jpg',
        'Noah Talb'
    )
  ];
  List<PostData> post=[
    PostData(
        'assets/images/user.jpg',
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
        'assets/images/user.jpg',
        'Noah Talb',
        '10 Oct . 2022',
        'assets/images/first-aid.jpg',
        100,
        50,
        ''
    ),
  ];
  late bool _loading;
  List? _outputs;
  List? _outputs2;
  File? _imageProfile;
  File? _imageCover;
  final imagePicker = ImagePicker();
  final imagePicker2 = ImagePicker();

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model_unquant.tflite",
      labels: "assets/labels.txt",
    );
  }
  Future<void> _optionDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colour('#008894'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    onTap: openCamera,
                    child:const Text(
                      "Take a Picture",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                    onTap: openGallery,
                    child: const Text(
                      "Select image ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Segoe UI',
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }


  Future openCamera() async {
    var image = await imagePicker.getImage(source: ImageSource.camera);
    var image2 = await imagePicker2.getImage(source: ImageSource.camera);
    setState(() {
      _loading= true;
      _imageProfile = File(image!.path);
      _imageCover = File(image2!.path);
      Navigator.pop(context);

    });

  }

  //camera method
  Future openGallery() async {
    final picture = await imagePicker.getImage(source: ImageSource.gallery);
    final picture2 = await imagePicker2.getImage(source: ImageSource.gallery);

    setState(() {
      _loading= true;
      _imageProfile = File(picture!.path);
      _imageCover = File(picture2!.path);
      Navigator.pop(context);
    }

    );
    classifyImageProfile(_imageProfile!);
    classifyImageCover(_imageCover!);
  }



  classifyImageProfile(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      imageMean: 127.5,
      // defaults to 117.0
      imageStd: 127.5,
      // defaults to 1.0
      numResults: 2,
      // defaults to 5
      threshold: 0.5, // defaults to 0.1
    );
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }
  classifyImageCover(File image2) async {
    var output = await Tflite.runModelOnImage(
      path: image2.path,
      imageMean: 127.5,
      // defaults to 117.0
      imageStd: 127.5,
      // defaults to 1.0
      numResults: 2,
      // defaults to 5
      threshold: 0.5, // defaults to 0.1
    );
    setState(() {
      _loading = false;
      _outputs2 = output;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: 26
                ),
                child: Stack(
                  children: <Widget>[
                    Stack(
                      children: [
                       _imageCover==null?  Container(
                         color: Colour('#C5C5C5'),
                         height: 132,
                         width: double.infinity,

                       ):Container(
                         width:double.infinity,
                         height: 132,
                         decoration: BoxDecoration(
                           borderRadius:BorderRadius.circular(200),
                           // border: Border.all(color:Colour('#008894'),width:3),
                         ),
                         child: Image.file(_imageCover!),
                       ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              top: 80,
                              start: 350
                          ),
                          child: Container(
                            height: 32,
                            width: 32,
                            child: FloatingActionButton(
                              backgroundColor: Colour('#EFEFEF'),
                              onPressed: _optionDialogBox,
                              child: Center(
                                child: Icon(
                                  Icons.camera_alt,
                                  color:Colour('#5B5E60'),
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            top: 83,
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 25,
                                ),
                                child: _imageProfile==null?
                                Container(
                                  width:92,
                                  height: 92,
                                  decoration: BoxDecoration(
                                    borderRadius:BorderRadius.circular(50),
                                    border: Border.all(color:Colour('#008894'),width:3),
                                    image: DecorationImage(
                                      image: AssetImage('${profilePage[0].avatarUrlPostProfile}')
                                    )
                                  ),
                                ):Container(
                                    width:92,
                                    height: 92,
                                    decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(200),
                                      // border: Border.all(color:Colour('#008894'),width:3),
                                    ),
                                    child: Image.file(_imageProfile!),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    top: 60,
                                    start: 80
                                ),
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  child: FloatingActionButton(
                                    backgroundColor: Colour('#EFEFEF'),
                                    onPressed: _optionDialogBox,
                                    child: Center(
                                      child: Icon(
                                        Icons.camera_alt,
                                        color:Colour('#5B5E60'),
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            top: 140,
                            start: 160,
                          ),
                          child: Material(
                            color: Colour('#008894'),
                            borderRadius: BorderRadius.circular(10),
                            child: MaterialButton(
                              onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(_)=> const EditProfile())),
                              minWidth: 96,
                              height: 36,
                              child: Text(
                                'Edit profile',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colour('#FFFFFF'),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Segoe UI'
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          top: 190,
                          start: 24
                      ),
                      child: Text('${profilePage[0].postUserNameProfile}',
                        style:TextStyle(
                          fontFamily:'Segoe UI',
                          fontSize: 20,
                          fontWeight:FontWeight.bold,
                          color:Colour('#505050'),
                        ),
                      ),
                    ),




                  ],


                ),
              ),
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
              const SizedBox(
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
