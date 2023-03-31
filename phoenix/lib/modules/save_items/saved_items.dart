import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/saveddata_model.dart';
class SavedItems extends StatefulWidget {
  const SavedItems({Key? key}) : super(key: key);

  @override
  State<SavedItems> createState() => _SavedItemsState();
}

class _SavedItemsState extends State<SavedItems> {
  List<SavedData> saved=[
    SavedData(
      'assets/images/aid.jpg',
      'الإسعافات الأولية ',
      'Post ',
      ' Osama anwar',
      'Saved 4 days ago',
    ),
    SavedData(
      'assets/images/mot.jpg',
      'Motivation club',
      'Video',
      'Haidy Mousa',
      'Saved 1 week ago',
    ),
    SavedData(
      'assets/images/meta.jpg',
      'Meta nano',
      'Post',
      'Aya Emad',
      'Saved 2 weeks ago',
    ),
    SavedData(
      'assets/images/health.jpg',
      'Healthcare',
      'Post',
      ' Osama anwar',
      'Saved 4 weeks ago',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 35,
        ),
        child: Scaffold(
          backgroundColor: Colour('#FFFFFF'),
          appBar: AppBar(
            elevation: 0,
            backgroundColor:Colour('#FFFFFF') ,
            centerTitle:true,
            title:Text(
              'Saved',
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
            child: Column(
              children: [
               const  SizedBox(
                  height: 64,
                ),
                savedData2(saved[0], context),
                const  SizedBox(
                  height: 40,
                ),
                savedData2(saved[1], context),
                const  SizedBox(
                  height: 40,
                ),
                savedData2(saved[2], context),
                const  SizedBox(
                  height: 40,
                ),
                savedData2(saved[3], context),
                const  SizedBox(
                  height: 28,
                ),
                Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colour('#EFEFEF'),
                    borderRadius:BorderRadius.circular(15),
                  ),
                  child:TextButton(
                    onPressed:(){},
                    child:Text(
                      'See More',
                      style: TextStyle(
                        fontFamily:'Segoe UI',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colour('#505050'),
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
