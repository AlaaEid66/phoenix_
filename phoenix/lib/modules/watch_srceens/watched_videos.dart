import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/modules/posts/post.dart';
import 'package:phoenix/modules/posts/postdata.dart';
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
    ),
    PostData(
      'assets/images/s1.jpg',
      'Ali Emam',
      '10 Oct . 2022',
      'assets/images/v2.jpg',
    ),
    PostData(
      'assets/images/s1.jpg',
      'Ahmed Mahdy',
      '10 Oct . 2022',
      'assets/images/v3.jpg',
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
            onPressed:(){},
            icon:Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        backgroundColor: Colour('#FFFFFF'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                 postVideos(videos[0], context),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.002,
                ),
                postVideos(videos[1], context),
                SizedBox(
                  height:MediaQuery.of(context).size.height*0.002,
                ),
                postVideos(videos[2], context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
