import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
class Receiver extends StatefulWidget {
  const Receiver({Key? key}) : super(key: key);

  @override
  State<Receiver> createState() => _ReceiverState();
}

class _ReceiverState extends State<Receiver> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colour('#F0FBFC'),
          ),
          child: Text(
            'Hello From The OtherSide ',
            style:TextStyle(
              fontFamily: 'Segoe UI',
              color: Colour('#5B5E60'),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
