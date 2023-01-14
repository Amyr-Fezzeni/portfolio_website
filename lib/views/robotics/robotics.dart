import 'package:flutter/material.dart';
import 'package:flutter_portfolio_website/consts/consts.dart';
import 'package:video_player/video_player.dart';

class Robotics extends StatefulWidget {
  const Robotics({Key? key}) : super(key: key);

  @override
  State<Robotics> createState() => _RoboticsState();
}

class _RoboticsState extends State<Robotics> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/images/v.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 500,
      width: double.infinity,
      child: Column(
        children: [
          _controller.value.isInitialized
              ? Column(
                  children: [
                    Container(
                      constraints: const BoxConstraints(minHeight: 200),
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    ),
                    VideoProgressIndicator(_controller, allowScrubbing: true),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(12)),
                          child: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                          ),
                        ))
                  ],
                )
              : const SizedBox(
                  height: 200,
                  child: Center(
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(
                        color: btnColor,
                      ),
                    ),
                  ),
                ),
          // _ControlsOverlay(controller: _controller),
        ],
      ),
    );
  }
}
