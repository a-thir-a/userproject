import 'package:fantacode/screens/userList.dart';
import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  final item;
  UserData({this.item});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double circleRadius = 170.0;
    final double circleBorderWidth = 8.0;
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => UserList()));
            },
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.grey,
              size: 70.0,
            ),
          ),
          backgroundColor: Colors.grey[200],
          elevation: 0.0,
        ),
        body: Container(
            padding: EdgeInsets.all(15),
            width: screenWidth,
            height: screenHeight,
            color: Colors.grey[200],
            child: Container(
// child:Text('test')
                child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: circleRadius / 2.0),
                  child: Container(
                    height: screenHeight * 0.5,
                    width: screenWidth * 0.9,
                    child: Card(
                      elevation: 1,
                      child: Container(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 90),
                        child: Column(
                          children: <Widget>[
                            Text(item['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 30)),

                            Text('\n'),
                            Text(item['bio'],
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16)),

                            //  Padding(padding: EdgeInsets.only(top: screenHeight*0.1,left: screenWidth*0.6,right:screenWidth*0.)),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),

                      //replace this Container with your Card
                      color: Colors.white,
                      // height: 200.0,
                    ),
                  ),
                ),
                Card(
                   
                                shape: CircleBorder(),
                                  child: Container(
                    width: circleRadius,
                    height: circleRadius,
                     decoration: BoxDecoration(
                       color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                   
                                  ),
                    // decoration: ShapeDecoration(
                    //     shape: CircleBorder(), color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.all(circleBorderWidth),
                      child: DecoratedBox(
                        decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  (item['picture']),
                                ))),
                      ),
                    ),
                  ),
                )
              ],
            ))));
  }
}
/* children: <Widget>[
                
                new Positioned(
                  bottom: 60.0,
                   left:  0.1,
                   right: 0.1,
                   top: 90,
                   child: Container(
                     
                     width: screenWidth*0.8,
                     height: screenHeight*0.4,
                     child: Card(
                       child: Text('indexname'),
                       color: Colors.green,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.all(
                         Radius.circular(10),
                       )),
                     ),
                   ),
                 ),

                 new Positioned(
                  bottom: 20.0,
                   left:  0.1,
                   right: 0.1,
                   top: 20,
                child: Container(
                  width: screenWidth*0.,
                     height: screenHeight*0.2,
                  child: Card(
                     child: Text('indexy'),
                         color: Colors.blue,
                    shape: CircleBorder(),
                    
                    
                  ),
                ),
                 ),
              ],

            )
            
            )));
 
 
 
 
  }
}*/
