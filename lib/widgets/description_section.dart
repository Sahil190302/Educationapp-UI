import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top:20),
    child: Column(
      children: [
        Text("A mobile app (or mobile application) is a software application developed specifically for use on small, wireless computing devices,"
            " such as smartphones and tablets, rather than desktop or laptop computer given platform."
            " A third category, hybrid apps, combines elements of both native and web appsIn today's digital age, "
            "mobile apps are an essential part of most people's daily lives. From social networking and entertainment to productivity and business, mobile apps play a vital role in how we interact with technology.",style: TextStyle(
          fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black,wordSpacing: 2
        ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height:20),
        Row(
          children: [
            Text(
              'Course Length',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,

              ),
            ),
            Icon(
              Icons.timer,
              color: Colors.purple,
            ),
            SizedBox(width: 5,),
            Text(
              '26 Hours',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,

              ),
            ),
          ],
        ),
        SizedBox(height:10),
        Row(
          children: [
            Text(
              'Rating',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,

              ),
            ),
            Icon(
              Icons.star,
              color: Colors.amberAccent,
            ),
            SizedBox(width: 5,),
            Text(
              '4.5',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,

              ),
            ),
          ],
        ),
      ],
    ),
    );
  }
}
