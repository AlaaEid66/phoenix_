import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour('#FFFFFF'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [

              ],
            ),
          ],
        ),
      ),
    );
  }
}