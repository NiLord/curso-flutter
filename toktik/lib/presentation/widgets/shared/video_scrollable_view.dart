import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final VideoPost video = videos[index];
          
          return Stack(
            children: [
              // Video Player + Gradiente
              SizedBox.expand(
                child: FullscreenPlayer(videoUrl: video.videoUrl, caption: video.caption)
              ),
              //Botones
              Positioned(
                bottom: 40,
                right: 20,
                child: VideoButtons(video: video)),
            ]
          );
        });
  }
}
