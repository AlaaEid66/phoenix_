import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
   File? _image;
  final imagePicker= ImagePicker();
  Future getImage()async{
    final image = await imagePicker.getImage(source:ImageSource.camera);
    // final image2 = await imagePicker.getImage(source:ImageSource.camera);
    setState(() {
      _image= File(image!.path);
      // _image= File(image2!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top:60,
      ),
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        appBar: AppBar(
          elevation: 0,
          backgroundColor:Colour('#FFFFFF') ,
          centerTitle:true,
          title:Text(
            'Identify the degree of burn',
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
              top: 128,
              left: 99
            ),
            child: Column(
             children: [
               Text(
                   'Drop an image here :',
                 style:TextStyle(
                   color:Colour('#008894'),
                   fontSize: 18,
                   fontFamily: 'Segoe UI',
                   fontWeight: FontWeight.bold
                 ),
               ),
               const SizedBox(
                 height: 24,
               ),
               Container(
                 width: 192,
                 height: 200,
                 decoration: BoxDecoration(
                     border: Border.all(color:Colour('#008894'),width:3),
                 ),
                 child:_image== null? IconButton(
                   icon:const Icon(Icons.add_photo_alternate),
                   onPressed:getImage,
                   color:Colour('#008894').withOpacity(0.4),
                   iconSize: 140,
                 ): Image.file(_image!)
               ),
               const SizedBox(
                 height: 24,
               ),
               defButton(
                 pressed: (){},
                 text:_image==null?'Result':'Share',
                 fontSize: 13,
                 width: 85,
                 height: 40,
                 backgroundColor:Colour('#008894'),
                 border: 10
               ),
             ],
            ),
          ),
        ),
      ),
    );
  }
}
