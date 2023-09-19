import 'package:flutter/material.dart';
import 'WelcomeScreen.dart';
void main(){
  runApp(HomeApp());
}
class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
        home:WelcomeScreen(),
    );
  }
}
