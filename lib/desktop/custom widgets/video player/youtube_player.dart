import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerWidget extends StatefulWidget {
  final List<String> links;
  const YoutubePlayerWidget({Key? key, required this.links}) : super(key: key);

  @override
  State<YoutubePlayerWidget> createState() => _YoutubePlayerWidgetState();
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.links[0],

      params: YoutubePlayerParams(
        
        playlist: widget.links.length > 1
            ? widget.links
            : [], // Defining custom playlist
        startAt: const Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,

        strictRelatedVideos: true,
      ),
    );
    // _controller.onEnterFullscreen = () {
    //   SystemChrome.setPreferredOrientations([
    //     DeviceOrientation.landscapeLeft,
    //     DeviceOrientation.landscapeRight,
    //   ]);
    // };
  }

  @override
  void dispose() {
    // _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 300,
      // height: 200,
      child: Center(
        child: YoutubePlayerIFrame(
          
          controller: _controller,
          aspectRatio: 16 / 9,
        ),
      ),
    );
  }
}
