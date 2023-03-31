import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/shared/components/component.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class RateApp extends StatefulWidget {
  const RateApp({Key? key}) : super(key: key);

  @override
  State<RateApp> createState() => _RateAppState();
}

class _RateAppState extends State<RateApp> {
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
            'Rate App',
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
              top: 70,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 222,
                    left: 53,
                  ),
                  child: Text(
                    'Rate this app',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colour('#505050'),
                        fontFamily: 'Segoe UI',
                        fontSize: 16,
                        fontWeight:FontWeight.w600
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 160,
                    left: 53,
                  ),
                  child: Text(
                    'Tell others what you think',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colour('#505050'),
                      fontFamily: 'Segoe UI',
                      fontSize: 14,
                      fontWeight:FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                RatingBar.builder(
                  itemCount: 5,
                    initialRating: 0 ,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemPadding: const EdgeInsets.only(
                      right: 16,
                    ),
                    itemBuilder:(context,_)=>Icon(Icons.star_border,
                      color: Colour('#FFC107'),
                    ),
                    onRatingUpdate:(rating){

                    },
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 70,
                //   ),
                //   child: Row(
                //     children: [
                //       IconButton(
                //         onPressed:(){},
                //         icon: const Icon(Icons.star_border_rounded),
                //         color: Colour('#FFC107'),
                //         iconSize: 45,
                //       ),
                //       IconButton(
                //         onPressed:(){},
                //         icon: const Icon(Icons.star_border_rounded),
                //         color: Colour('#FFC107'),
                //         iconSize: 45,
                //       ),
                //       IconButton(
                //         onPressed:(){},
                //         icon: const Icon(Icons.star_border_rounded),
                //         color: Colour('#FFC107'),
                //         iconSize: 45,
                //       ),
                //       IconButton(
                //         onPressed:(){},
                //         icon: const Icon(Icons.star_border_rounded),
                //         color: Colour('#FFC107'),
                //         iconSize: 45,
                //       ),
                //       IconButton(
                //         onPressed:(){},
                //         icon: const Icon(Icons.star_border_rounded),
                //         color: Colour('#FFC107'),
                //         iconSize: 45,
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 224,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Colour('#FFFFFF'),
                    border:Border.all(color:Colour('#008894'),width:2),
                  ),
                  width: 304,
                  height: 110,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                      ),
                      contentPadding: const EdgeInsets.only(
                        left: 10,
                        bottom: 10,
                      ),
                      // focusColor: Colour('#FFFFFF'),
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colour('#FFFFFF'),
                      //     width: 0,
                      //   ),
                      // ),
                      hintText: 'Write..',
                      hintStyle: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize:16,
                        fontWeight: FontWeight.normal,
                        color: Colour('#505050'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                defButton(
                  border: 10,
                  backgroundColor: Colour('#008894'),
                  pressed:(){},
                  text:'Send',
                  width: 92,
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
