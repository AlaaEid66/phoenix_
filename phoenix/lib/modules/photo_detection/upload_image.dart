import 'dart:math';

import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:phoenix/widgets/shared/components/component.dart';
class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  late bool _loading;
  List? _outputs;
  File? _image;
  final imagePicker = ImagePicker();


  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

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
    setState(() {
      _loading= true;
      _image = File(image!.path);
      Navigator.pop(context);

    });

  }

  //camera method
  Future openGallery() async {
    final picture = await imagePicker.getImage(source: ImageSource.gallery);

    setState(() {
      _loading= true;
      _image = File(picture!.path);
      Navigator.pop(context);
    }

    );
    classifyImage(_image!);
  }


  classifyImage(File image) async {
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



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 60,
      ),
      child: Scaffold(
        backgroundColor: Colour('#FFFFFF'),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colour('#FFFFFF'),
          centerTitle: true,
          title: Text(
            'Identify the degree of burn',
            style: TextStyle(
              color: Colour('#505050'),
              fontFamily: 'Segoe UI',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            color: Colour('#000000').withOpacity(0.5),
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
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
                  style: TextStyle(
                      color: Colour('#008894'),
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
                      border: Border.all(color: Colour('#008894'),
                          width: 3),
                    ),
                    child: _image == null ? IconButton(
                      icon: const Icon(Icons.add_photo_alternate),
                      onPressed: _optionDialogBox,
                      color: Colour('#008894').withOpacity(0.4),
                      iconSize: 140,
                    ) : Image.file(_image!)
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 10,
                    start: 10,
                  ),
                  child: _outputs != null ?
                  Text("${_outputs![0]["label"]}",
                    style: TextStyle(
                        color: Colour('#008894'),
                        fontSize: 16,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.bold
                    ),
                  )
                      :
                  const SizedBox(),
                ),
                const SizedBox(
                  height: 24,
                ),
                defButton(
                    pressed: () {},
                    text: _image == null ? 'Result' : 'Share',
                    fontSize: 13,
                    width: 85,
                    height: 40,
                    backgroundColor: Colour('#008894'),
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



