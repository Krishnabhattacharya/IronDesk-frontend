import 'dart:io';

import 'package:irondesk/utils/utils.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewWidget extends StatefulWidget {
  final String videoUrl;

  const VideoPreviewWidget({super.key, required this.videoUrl});

  @override
  _VideoPreviewWidgetState createState() => _VideoPreviewWidgetState();
}

class _VideoPreviewWidgetState extends State<VideoPreviewWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    if (widget.videoUrl.startsWith("http")) {
      _controller = VideoPlayerController.network(widget.videoUrl);
    } else {
      _controller = VideoPlayerController.file(File(widget.videoUrl));
    }

    _controller.initialize().then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : Center(child: const CupertinoActivityIndicator());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
