import 'package:colour/colour.dart';
import 'package:flutter/material.dart';


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
                Column(
                  children: [
                    Text(
                      'Rate this app',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colour('#505050'),
                          fontFamily: 'Segoe UI',
                          fontSize: 16,
                          fontWeight:FontWeight.w500
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Tell others what you think',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colour('#505050'),
                        fontFamily: 'Segoe UI',
                        fontSize: 12,
                        fontWeight:FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 98,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed:(){},
                        icon: const Icon(Icons.star_border_rounded),
                        color: Colour('#FFC107'),
                        iconSize: 40,
                      ),
                    ],
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
