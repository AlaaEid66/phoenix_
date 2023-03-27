import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phoenix/shared/components/component.dart';

class ShareApp extends StatefulWidget {
  const ShareApp({Key? key}) : super(key: key);

  @override
  State<ShareApp> createState() => _ShareAppState();
}

class _ShareAppState extends State<ShareApp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        appBar: AppBar(
          elevation: 0,
          backgroundColor:Colour('#FFFFFF') ,
          centerTitle:true,
          title:Text(
            'Share App',
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
          child: Padding(
            padding: const EdgeInsets.only(
                left: 36,
                right: 35,
                top: 64,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colour('#EFEFEF'),
                  ),
                  width: 304,
                  height: 48,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                      ),
                      labelText: 'Via Facebook',
                      labelStyle: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                          fontWeight: FontWeight.normal,
                          color: Colour('#505050')
                      ),
                      prefixIcon:Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 16,
                          right: 8,
                        ),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color:Colour('#5B5E60'),width:2)
                          ),
                          child: Icon(
                             FontAwesomeIcons.facebookF,
                            size: 20,
                            color: Colour('#505050'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colour('#EFEFEF'),
                  ),
                  width: 304,
                  height: 48,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                      ),
                      labelText: 'Via Twitter',
                      labelStyle: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                          fontWeight: FontWeight.normal,
                          color: Colour('#505050')
                      ),
                      prefixIcon:Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          left: 16,
                          right: 8,
                        ),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color:Colour('#5B5E60'),width:2)
                          ),
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            size: 20,
                            color: Colour('#505050'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colour('#EFEFEF'),
                  ),
                  width: 304,
                  height: 48,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                      ),
                      labelText: 'Via Instagram',
                      labelStyle: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                          fontWeight: FontWeight.normal,
                          color: Colour('#505050')
                      ),
                      prefixIcon:Padding(
                        padding: const EdgeInsets.only(
                          top: 4,
                          bottom: 16,
                          left: 16,
                          right: 8,
                        ),
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          size: 40,
                          color: Colour('#505050'),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colour('#EFEFEF'),
                  ),
                  width: 304,
                  height: 48,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                      ),
                      labelText: 'Copy link',
                      labelStyle: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize:18,
                          fontWeight: FontWeight.normal,
                          color: Colour('#505050')
                      ),
                      prefixIcon:Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 16,
                          left: 16,
                          right: 16,
                        ),
                        child: Icon(
                          Icons.file_copy,
                          // FontAwesomeIcons.c,
                          size: 30,
                          color: Colour('#505050'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
