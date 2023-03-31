import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          left: 24,
          right: 10,
          bottom: 20,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colour('#FFFFFF').withOpacity(0.6),
            borderRadius: BorderRadius.circular(20)
          ),
          width: 343,
          height: 680,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 300,
                  top: 6,
                ),
                child: IconButton(
                    onPressed:()=>Navigator.pop(context),
                    icon:const Icon(Icons.close),
                  color:Colour('#505050'),
                  iconSize: 20,
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Center(
                child: IconButton(
                    onPressed:(){},
                    icon:const Icon(FontAwesomeIcons.solidCommentDots),
                  iconSize: 150,
                  color:Colour('#5B5E60').withOpacity(0.1),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'No comments yet',
                style: TextStyle(
                  color:Colour('#505050'),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Segoe UI'
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Be the first to comment',
                style: TextStyle(
                    color:Colour('#505050'),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Segoe UI'
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 40,
                    decoration:BoxDecoration(
                      color: Colour('#EFEFEF'),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            left: 10,
                          bottom: 10,
                        ),
                        hintText:'Write a comment..',
                        hintStyle:TextStyle(
                            color:Colour('#505050'),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Segoe UI'
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  IconButton(
                    onPressed:(){},
                    icon:const Icon(Icons.send),
                    iconSize: 3,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
