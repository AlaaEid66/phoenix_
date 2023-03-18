import 'package:flutter/material.dart';
import 'package:storyly_flutter/storyly_flutter.dart';
class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  static const storylyToken =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhY2NfaWQiOjc2MCwiYXBwX2lkIjo0MDUsImluc19pZCI6NDA0fQ.1AkqOy_lsiownTBNhVOUKc91uc9fDcAxfQZtpm3nj40";

  late StorylyViewController storylyViewController;

  void onStorylyViewCreated(StorylyViewController storylyViewController) {
    this.storylyViewController = storylyViewController;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: StorylyView(
          onStorylyViewCreated: onStorylyViewCreated,
          androidParam: StorylyParam()..storylyId = storylyToken,
          iosParam: StorylyParam()..storylyId = storylyToken,
          storylyLoaded: (storyGroups, dataSource) {
            debugPrint("storylyLoaded -> storyGroups: ${storyGroups.length}");
            debugPrint("storylyLoaded -> dataSource: $dataSource");
          },
          storylyLoadFailed: (errorMessage) =>
              debugPrint("storylyLoadFailed -> $errorMessage"),
          storylyActionClicked: (story) {
            debugPrint("storylyActionClicked -> ${story.title}");
          },
          storylyEvent: (event, storyGroup, story, storyComponent) {
            debugPrint("storylyEvent -> event: $event");
            debugPrint("storylyEvent -> storyGroup: ${storyGroup?.title}");
            debugPrint("storylyEvent -> story: ${story?.title}");
            debugPrint("storylyEvent -> storyComponent: $storyComponent");
          },
          storylyStoryShown: () => debugPrint("storylyStoryShown"),
          storylyStoryDismissed: () => debugPrint("storylyStoryDismissed"),
          storylyUserInteracted: (storyGroup, story, storyComponent) {
            debugPrint("userInteracted -> storyGroup: ${storyGroup.title}");
            debugPrint("userInteracted -> story: ${story.title}");
            debugPrint("userInteracted -> storyComponent: $storyComponent");
          },
        ),
      ),
    );
  }
}
