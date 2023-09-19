import 'package:flutter/material.dart';
import 'package:projectedu/App.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child: Stack(
          children:[
            Stack(children:[
              Container(
                width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height/1.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                )
              ),
              Container(
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.only(bottomRight:Radius.circular(70)),
                  ),
                  child:Center(child:Image.asset("assets/images/Books",
                scale:0.8),
                ),
              ),
            ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/2.66,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  )
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                  width:MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/2.66,
                  padding: EdgeInsets.only(top:40,bottom: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70)
                    ),
                  ),
                  child:Column(children:[
                    Text('Learning is Everything',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                    ),
                    SizedBox(height: 15,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 40,),
                    child: Text("Learning with Pleasure Dear Programmer,wherever you are",
                      textAlign: TextAlign.center,
                      style:TextStyle(fontSize: 17,fontWeight:FontWeight.w400,
                    color: Colors.black.withOpacity(0.9),
                      ),
                    ),
                    ),
                    SizedBox(height: 60,),
                    Material(
                      color:Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>HomePage(),));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 80
                          ),
                          child:Text(
                            'Get Start',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
