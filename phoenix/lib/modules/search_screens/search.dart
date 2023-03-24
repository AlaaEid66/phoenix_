import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colour('#FFFFFF'),
          appBar: AppBar(
            backgroundColor:Colour('#008894'),
            leading:IconButton(
              color:Colour('#FFFFFF'),
              onPressed:()=>Navigator.pop(context),
              icon:const Icon(Icons.arrow_back_ios_new_rounded),
            ),
            title:Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 30,
              ),
              child: Container(
                width: 280,
                height: 36,
                decoration: BoxDecoration(
                  color: Colour('#FFFFFF'),
                  borderRadius:BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                  ),
                  child: TextFormField(
                    decoration:InputDecoration(
                      focusedBorder:OutlineInputBorder(
                        borderSide:BorderSide(
                          color:Colour('#FFFFFF'),
                          width: 0,
                        )
                      ),
                      hintText:'Search',
                      hintStyle:TextStyle(
                        fontSize: 16,
                        fontFamily: 'Segoe UI',
                        fontWeight: FontWeight.normal,
                        color: Colour('#505050'),
                      )
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed:(){},
                icon:Icon(Icons.line_style),
              ),
            ],
          ),
          body:SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration:BoxDecoration(
                        color: Colour('#EFEFEF'),
                        
                      ),

                      child:TextButton(
                         child: Text('All',
                           style:TextStyle(
                             fontSize: 16,
                             fontFamily: 'Segoe UI',
                             fontWeight: FontWeight.normal,
                             color:Colour('#505050'),
                           ),
                         ),
                        onPressed:(){},
                      ),
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
