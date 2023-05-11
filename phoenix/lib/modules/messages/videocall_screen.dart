import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:phoenix/models/messagedata_model.dart';
class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  List<VideoCallDoc> video=[
    VideoCallDoc(
      'assets/images/doc.jpg',
      'assets/images/patient.jpg',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              top: 100,
              right: 37,
            ),
            child: Stack(
              children: [
                Container(
                  width: 302,
                  height: 579,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage('${video[0].avatarDocUrl}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 400,
                    left: 180,
                  ),
                  child: Container(
                    width: 108,
                    height: 158,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage('${video[0].avatarPatientUrl}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
              top: 14,
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: CircleAvatar(
                    backgroundColor: Colour('#EFEFEF'),
                    child: IconButton(
                      color: Colour('#5B5E60'),
                      icon: const Icon(Icons.flip_camera_ios),
                      onPressed: (){},
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: CircleAvatar(
                    backgroundColor: Colour('#EFEFEF'),
                    child: IconButton(
                      color: Colour('#5B5E60'),
                      icon: const Icon(Icons.videocam_off),
                      onPressed: (){},
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: CircleAvatar(
                    backgroundColor: Colour('#EFEFEF'),
                    child: IconButton(
                      color: Colour('#5B5E60'),
                      icon: const Icon(Icons.mic),
                      onPressed: (){},
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: CircleAvatar(
                    backgroundColor: Colour('#F74B22'),
                    child: IconButton(
                      color: Colour('#5B5E60'),
                      icon: const Icon(Icons.call),
                      onPressed: (){},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
