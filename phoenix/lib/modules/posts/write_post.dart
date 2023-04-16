import 'dart:io';
import 'dart:ui';
import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phoenix/widgets/post.dart';
import 'package:phoenix/models/postdata_model.dart';
import 'package:phoenix/widgets/shared/components/component.dart';

class WritePost extends StatefulWidget {
  const WritePost({Key? key}) : super(key: key);

  @override
  State<WritePost> createState() => _WritePostState();
}

class _WritePostState extends State<WritePost> {
  File? _image2;
  final imagePicker= ImagePicker();
  Future getImage()async{
    final image = await imagePicker.getImage(source:ImageSource.gallery);
    setState(() {
      _image2= File(image!.path);
    });
  }
  List<PostDataProfile> write=[
    PostDataProfile(
      'assets/images/s1.jpg',
      'Noah'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top:40,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset:false,
        appBar:AppBar(
          elevation: 1,
          backgroundColor: Colour('#FFFFFF'),
          centerTitle: false,
          title: Text('Write post',
            style:TextStyle(
              color: Colour('#505050'),
              fontFamily: 'Segoe UI',
              fontSize: 18,
              fontWeight:FontWeight.w500,
            ),
          ),
          leading:IconButton(
            color:Colour('#000000').withOpacity(0.5),
            onPressed:()=>Navigator.pop(context),
            icon:const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        backgroundColor: Colour('#FFFFFF'),
        body:  SingleChildScrollView(
          physics: const ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 15,
                  ),
                  child: Row(
                    children: [
                       writePost(write[0],context),
                      SizedBox(
                        width:MediaQuery.of(context).size.width*0.05,
                      ),
                      Container(
                        width:120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colour('#EFEFEF'),
                          borderRadius:BorderRadius.circular(10)
                        ),
                        child:Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 16,
                              ),
                              child: IconButton(
                                onPressed:getImage,
                                icon:const Icon(Icons.add),
                                color:Colour('#5B5E60'),
                              ),
                            ),
                            Text('Albums',
                              style:TextStyle(
                                color:Colour('#5B5E60'),
                                fontSize: 14,
                                fontFamily: 'Segoe UI',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                     const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width:115,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Colour('#EFEFEF'),
                            borderRadius:BorderRadius.circular(10)
                        ),
                        child:Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,

                              ),
                              child: Text('Privacy',
                                style:TextStyle(
                                  color:Colour('#5B5E60'),
                                  fontSize: 14,
                                  fontFamily: 'Segoe UI',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed:(){},
                              icon:const Icon(Icons.expand_more_outlined),
                              color:Colour('#5B5E60'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: _image2==null? TextFormField(
                    textInputAction: TextInputAction.done,
                    textAlign:TextAlign.center,
                    maxLines: 16,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colour('#FFFFFF'),
                          width: 0.4,
                        ),
                      ),
                      contentPadding:const EdgeInsets.only(
                        top: 230,
                      ),
                      hintText:'What\'s on your mind ?',
                      hintStyle:TextStyle(
                        color:Colour('#505050') ,
                        fontFamily:'Segoe UI',
                        fontSize:20,
                        fontWeight:FontWeight.normal,
                      ),

                    ),
                  ):Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 16,
                      right: 16,
                      bottom: 40,
                    ),
                    child: Image.file(_image2!),
                  ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
