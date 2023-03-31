import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phoenix/models/postdata_model.dart';
import 'package:phoenix/shared/components/component.dart';
import 'package:phoenix/widgets/post.dart';
class SharePosts extends StatefulWidget {
  const SharePosts({Key? key}) : super(key: key);

  @override
  State<SharePosts> createState() => _SharePostsState();
}

class _SharePostsState extends State<SharePosts> {
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
        top: 40,
      ),
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colour('#FFFFFF'),
          leading:Padding(
            padding: const EdgeInsets.only(
              left: 27,
            ),
            child: IconButton(
              iconSize: 26,
              icon: const Icon(Icons.arrow_back_ios),
              onPressed:()=>Navigator.pop(context),
              color: Colour('#000000').withOpacity(0.5),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Text('Share ',
              style: TextStyle(
                color: Colour('#505050'),
                fontFamily: 'Segoe UI',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 26,
                top: 8,
              ),
              child: defButton(
                width: 100,
                height: 32,
                backgroundColor: Colour('#008894'),
                border: 15,
                pressed:(){},
                text:'Share now',
                fontSize: 14,
                fontWeight: FontWeight.bold,

              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 31,
              left: 16,
              right: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:Border.all(color:Colour('#008894'),width:0.2),
              ),
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
                        const SizedBox(
                          width: 110,
                        ),
                        Container(
                          width:110,
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
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    textAlign:TextAlign.left,
                    maxLines: 14,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colour('#FFFFFF'),
                          width: 0.0,
                        ),
                      ),
                      contentPadding:const EdgeInsets.only(
                        left: 16,
                        top: 24,
                      ),
                      hintText:'What\'s on your mind ?',
                      hintStyle:TextStyle(
                        color:Colour('#505050') ,
                        fontFamily:'Segoe UI',
                        fontSize:20,
                        fontWeight:FontWeight.normal,
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 90,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap:(){},
                          child: Container(
                            color: Colour('#EFEFEF'),
                            width: 350,
                            height: 40,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                  ),
                                  child: Icon(Icons.add_circle,
                                    color: Colour('#505050'),
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text('Share to your story',
                                  style: TextStyle(
                                    color:Colour('#505050'),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Segoe UI'
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        InkWell(
                          onTap:(){},
                          child: Container(
                            color: Colour('#EFEFEF'),
                            width: 350,
                            height: 40,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                  ),
                                  child: Icon(Icons.groups,
                                    color: Colour('#505050'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text('Share to a group',
                                  style: TextStyle(
                                      color:Colour('#505050'),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Segoe UI'
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        InkWell(
                          onTap:(){},
                          child: Container(
                            color: Colour('#EFEFEF'),
                            width: 350,
                            height: 40,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                  ),
                                  child: Icon(Icons.flag,
                                    color: Colour('#505050'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text('Share to a page',
                                  style: TextStyle(
                                      color:Colour('#505050'),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Segoe UI'
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        InkWell(
                          onTap:(){},
                          child: Container(
                            color: Colour('#EFEFEF'),
                            width: 350,
                            height: 40,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                  ),
                                  child: Icon(Icons.email_sharp,
                                    color: Colour('#505050'),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text('Send in message',
                                  style: TextStyle(
                                      color:Colour('#505050'),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Segoe UI'
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
