import 'package:flutter/material.dart';

class VideosSection extends StatelessWidget {

  List videoList =[
    'Introduction to Flutter',
    'Installing FLutter on Windows',
    'Setup Emulator on Windows',
    'Creating our First App',
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,

      itemBuilder: (context,index){
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0?
              Colors.purple :
              Colors.purple.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.play_arrow_rounded,
            color: Colors.white,size: 30,),

          ),
          title: Text(videoList[index]),
          subtitle: Text('20 min 15 sec'),
        );
      }
    );
  }
}
