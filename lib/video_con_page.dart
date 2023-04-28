import 'package:flutter/material.dart';
import 'package:fluttervideoconference/attributes.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class VideoConPage extends StatefulWidget {
  final String conferenceId;
  const VideoConPage({Key? key, required this.conferenceId}) : super(key: key);

  @override
  State<VideoConPage> createState() => _VideoConPageState();
}

class _VideoConPageState extends State<VideoConPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ZegoUIKitPrebuiltVideoConference(
          appID: Attributes.appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
          appSign: Attributes.appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
          userID: Attributes.userId,
          userName: Attributes.userName,
          conferenceID: widget.conferenceId,
          config: ZegoUIKitPrebuiltVideoConferenceConfig(),
        ),
      ),
    );
  }
}
