import 'package:flutter/material.dart';

class VideosSection extends StatelessWidget {
  final String courseName;
  final List<Map<String, String>> videoList;

  // Constructor to accept courseName and videoList
  VideosSection({required this.courseName, required this.videoList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final video = videoList[index];
        final title = video['title'] ?? 'No Title';
        final duration = video['duration'] ?? 'Unknown Duration';

        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0 ? Colors.purple : Colors.purple.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(title),
          subtitle: Text(duration),
        );
      },
    );
  }
}
