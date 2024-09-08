import 'package:flutter/material.dart';
import 'package:projectedu/widgets/description_section.dart';
import 'package:projectedu/widgets/videos_section.dart';

class CourseScreen extends StatefulWidget {
  final String img;
  CourseScreen(this.img);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideosSection = true;

  // Function to get video list based on course name
  List<Map<String, String>> getVideoList() {
    switch (widget.img) {
      case 'Flutter':
        return [
          {'title': 'Introduction to Flutter', 'duration': '20 min 15 sec'},
          {'title': 'Installing Flutter on Windows', 'duration': '15 min 30 sec'},
          {'title': 'Setup Emulator on Windows', 'duration': '10 min 45 sec'},
          {'title': 'Creating our First App', 'duration': '25 min 10 sec'},
        ];
      case 'Web Development':
        return [
          {'title': 'Introduction to Web Development', 'duration': '30 min 20 sec'},
          {'title': 'HTML Basics', 'duration': '25 min 50 sec'},
          {'title': 'CSS Styling', 'duration': '40 min 15 sec'},
          {'title': 'JavaScript Essentials', 'duration': '35 min 5 sec'},
        ];
      case 'Java':
        return [
          {'title': 'Introduction to Java', 'duration': '20 min 10 sec'},
          {'title': 'Java Variables and Data Types', 'duration': '30 min 5 sec'},
          {'title': 'Control Flow Statements', 'duration': '25 min 30 sec'},
          {'title': 'Object-Oriented Programming', 'duration': '40 min 15 sec'},
        ];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
            letterSpacing: 2,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            _buildImageSection(),
            SizedBox(height: 15),
            _buildCourseInfo(),
            SizedBox(height: 20),
            _buildSectionToggle(),
            SizedBox(height: 10),
            _buildSectionContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/${widget.img}.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.play_arrow_rounded,
            color: Colors.purple,
            size: 35,
          ),
        ),
      ),
    );
  }

  Widget _buildCourseInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${widget.img} Complete Course",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Created by Sahil Gupta",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        SizedBox(height: 5),
        Text(
          "55 videos",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionToggle() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildToggleButton("Videos", true),
          _buildToggleButton("Description", false),
        ],
      ),
    );
  }

  Widget _buildToggleButton(String text, bool isActive) {
    return Material(
      color: isActive ? Colors.purpleAccent : Colors.purpleAccent.withOpacity(0.6),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          setState(() {
            isVideosSection = isActive;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionContent() {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 300),
      child: isVideosSection
          ? VideosSection(courseName: widget.img, videoList: getVideoList())
          : DescriptionSection(), // Assuming DescriptionSection is properly defined
    );
  }
}
