import 'package:flutter/material.dart';
import 'package:projectedu/widgets/description_section.dart';
import 'package:projectedu/widgets/videos_section.dart';
class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideosSection =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,letterSpacing: 2
        ),
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.notifications,
          size: 28,
           color: Colors.purple,       ),
          ),
        ],

      ),
      body: Padding(
        padding:EdgeInsets.symmetric(vertical:10,horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/${widget.img}.png"),
                ),
              ),
              child: Center(
                child: Container(
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.play_arrow_rounded,color: Colors.purple,
                  size: 35,),
                )
              )
            ),
            SizedBox(height:15),
            Text("${widget.img} Complete Course",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(height: 5,),
            Text("Created by Sahil Gupta",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.black.withOpacity(0.6),
            ),
            ),
            SizedBox(height: 5,),
            Text("55 videos",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideosSection? Colors.purpleAccent : Colors.purpleAccent.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                          setState(() {
                            isVideosSection=true;
                          });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                        child: Text("Videos",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                      color: isVideosSection? Colors.purpleAccent:
                          Colors.purpleAccent.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                          onTap: (){
                              setState(() {
                                  isVideosSection=false;
                              });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                            child: Text("Description",
                              style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                      )
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            isVideosSection ? VideosSection() : DescriptionSection(),
          ],
        )
      )
    );
  }
}

