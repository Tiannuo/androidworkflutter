import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

import 'constData.dart';

class VideoPage extends StatefulWidget {
  final String title;
  final Map arguments;

  const VideoPage({Key? key, required this.title, required this.arguments}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final FijkPlayer player = FijkPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.setDataSource(videoPath, autoPlay: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.release();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FijkView(
          player: player,
          fsFit: FijkFit.fill,
        ),
      ),
    );
  }
}
