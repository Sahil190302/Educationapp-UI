import 'package:flutter/material.dart';
import 'course_screen.dart';
class HomePage extends StatelessWidget {
  List catnames =[
    'Category',
    'Classes',
    'Free Courses',
    'BookStore',
    'Live Courses',
    'Leaderboards'
  ];
  List<Color> catColors =[
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.limeAccent,
    Colors.orange,
  ];
  List<Icon> catIcons = [
    Icon(Icons.category,color: Colors.white,size:30),
    Icon(Icons.class_,color: Colors.white,size:30),
    Icon(Icons.assignment,color: Colors.white,size:30),
    Icon(Icons.store,color: Colors.white,size:30),
    Icon(Icons.play_circle_fill,color: Colors.white,size:30),
    Icon(Icons.emoji_emotions,color: Colors.white,size:30),
  ];
  List iml =[
    'Flutter',
    'Java',
    'Python',
    'Web Development'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
              ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(top:20,bottom: 20,left: 20,right: 20),),
                    Icon(
                      Icons.dashboard,
                      size:40,
                      color:Colors.white,

                    ),
                    Icon(
                      Icons.notification_add,
                      size:40,
                      color:Colors.white,
                    )
                  ],
                ),
                SizedBox(height:20,),
                Padding(padding: EdgeInsets.only(left:3,bottom: 15),
                child: Text("Hey Programmer",style: TextStyle(wordSpacing: 2,
                fontSize: 32,fontWeight: FontWeight.w400,color: Colors.black,letterSpacing: 1),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here....",
                      hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                      ),
                      prefixIcon: Icon(Icons.search,size:30)
                    )
                  )
                )
              ],
            )
          ),
          Padding(padding: EdgeInsets.only(top:20,left:15,right: 15),
            child: Column(children: [
              GridView.builder(
                itemCount: catnames.length,
                shrinkWrap:true,
                physics: NeverScrollableScrollPhysics(),

                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1,

                ),
                itemBuilder:(context, index){
                    return Column(
                      children: [
                        Container(
                          height:60,
                          width:60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape:BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],

                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          catnames[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.7)
                          )
                        )
                      ],
                    );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Courses",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.red
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              GridView.builder(
                itemCount: iml.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4*240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
            itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseScreen(iml[index])));
                    },
                    child:Container(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/${iml[index]}.png",
                              width: 100,
                              height:100,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            iml[index],
                            style:TextStyle(fontSize:22,fontWeight:FontWeight.w500,letterSpacing: 2)
                          ),
                          SizedBox(height: 10),
                          Text(
                            '55 videos',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.7)
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
            }
              ),
            ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize:32,
        selectedItemColor: Colors.purple,
        selectedFontSize: 18,
        unselectedItemColor:Colors.grey ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),label:'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label:'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'Account'),

        ],
      )
    );
  }
}
