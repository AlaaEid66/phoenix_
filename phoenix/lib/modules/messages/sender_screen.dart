import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/messagedata_model.dart';
class Sender extends StatefulWidget {
  const Sender({Key? key}) : super(key: key);

  @override
  State<Sender> createState() => _SenderState();
}

class _SenderState extends State<Sender> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colour('#EFEFEF'),
              ),
              child: Text(
                'Hello',
                style:TextStyle(
                  fontFamily: 'Segoe UI',
                  color: Colour('#5B5E60'),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
