import 'package:flutter/material.dart';

class AllCoursesScreen extends StatelessWidget {
  final List<String> allCourses;

  AllCoursesScreen(this.allCourses);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Courses'),
      ),
      body: ListView.builder(
        itemCount: allCourses.length,
        itemBuilder: (context, index) {
          String course = allCourses[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text(course[0]),
            ),
            title: Text(course),
            subtitle: Text('55 videos'),
            onTap: () {
              // Handle course tap if needed
            },
          );
        },
      ),
    );
  }
}
