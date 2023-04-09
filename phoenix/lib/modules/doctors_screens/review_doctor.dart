import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phoenix/models/reviewdata_model.dart';
import 'package:phoenix/widgets/review_comments.dart';
class ReviewDoctor extends StatefulWidget {
  const ReviewDoctor({Key? key}) : super(key: key);

  @override
  State<ReviewDoctor> createState() => _ReviewDoctorState();
}

class _ReviewDoctorState extends State<ReviewDoctor> {
  List<CommentReview> commentReview=[
    CommentReview(
      'assets/images/s1.jpg',
      'Ahmed Mahdy ',
      '01/12/23',
      'Lorem Ipsum is simply dummy text of the printing',
      45,
      2,
    ),
    CommentReview(
      'assets/images/s1.jpg',
      'Ahmed Mowafy',
      '01/1/22',
      'Lorem Ipsum is simply dummy text of the printing',
      23,
      4,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colour('#FFFFFF') ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colour('#EFEFEF'),
              child: Column(
                children: [
                  review(commentReview[0], context),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 35
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed:(){},
                          icon:const Icon(Icons.thumb_up_alt_outlined),
                          color: Colour('#008894'),
                          iconSize: 17,
                        ),
                        Text('${commentReview[0].numOfLikes}',
                          style: TextStyle(
                            color: Colour('#008894'),
                            fontFamily: 'Segoe UI',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.09,
                        ),
                        IconButton(
                          onPressed:(){},
                          icon:const Icon(FontAwesomeIcons.commentDots),
                          color: Colour('#008894'),
                          iconSize: 16,
                        ),
                        Text('${commentReview[0].numOfComments}',
                          style: TextStyle(
                            color: Colour('#008894'),
                            fontFamily: 'Segoe UI',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: Colour('#EFEFEF'),
              child: Column(
                children: [
                  review(commentReview[1], context),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 35
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed:(){},
                          icon:const Icon(Icons.thumb_up_alt_outlined),
                          color: Colour('#008894'),
                          iconSize: 17,
                        ),
                        Text('${commentReview[1].numOfLikes}',
                          style: TextStyle(
                            color: Colour('#008894'),
                            fontFamily: 'Segoe UI',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.09,
                        ),
                        IconButton(
                          onPressed:(){},
                          icon:const Icon(FontAwesomeIcons.commentDots),
                          color: Colour('#008894'),
                          iconSize: 16,
                        ),
                        Text('${commentReview[1].numOfComments}',
                          style: TextStyle(
                            color: Colour('#008894'),
                            fontFamily: 'Segoe UI',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: Colour('#EFEFEF'),
              child: Column(
                children: [
                  review(commentReview[0], context),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 35
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed:(){},
                          icon:const Icon(Icons.thumb_up_alt_outlined),
                          color: Colour('#008894'),
                          iconSize: 17,
                        ),
                        Text('${commentReview[0].numOfLikes}',
                          style: TextStyle(
                            color: Colour('#008894'),
                            fontFamily: 'Segoe UI',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.09,
                        ),
                        IconButton(
                          onPressed:(){},
                          icon:const Icon(FontAwesomeIcons.commentDots),
                          color: Colour('#008894'),
                          iconSize: 16,
                        ),
                        Text('${commentReview[0].numOfComments}',
                          style: TextStyle(
                            color: Colour('#008894'),
                            fontFamily: 'Segoe UI',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
