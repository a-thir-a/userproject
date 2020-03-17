import 'package:fantacode/jsonFile.dart';
import 'package:fantacode/screens/userData.dart';
import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  var resultData;
  List<dynamic> jsonList = [];
  @override
  void initState() {
    // TODO: implement initState
    // userFunction();
    //  print('resultData[0]');
    //  print(resultData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double circleRadius = 90.0;
    final double circleBorderWidth = 6.0;
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 0.1),
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
            child: Column(
              children: <Widget>[
                Container(
              
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text(
                            'Feed',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          color: Colors.grey,
                          size: 50.0,
                        )
                      ]),
                ),
                Container(
                  height: screenHeight * 0.75,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      // var item = resultData[index];

                      return Container(
                        padding: EdgeInsets.only(top: 9, bottom: 9),
                        width: screenWidth * 0.3,
                        height: screenHeight * 0.19,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                             
                              Card(
                                shape: CircleBorder(),
                                
                                                              child: Container(
                                  width: circleRadius,
                                  height: circleRadius,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    
                                  ),

                                
                                  child: Padding(
                                    padding: EdgeInsets.all(circleBorderWidth),
                                    child: DecoratedBox(
                                      decoration: ShapeDecoration(
                                          shape: CircleBorder(),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                (userList[index]['picture']),
                                              ))),
                                    ),
                                  ),
                                ),
                              ),
                              
                              Container(
                                width: screenWidth * 0.3,
                                child: Text(
                                  userList[index]['name'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              UserData(item: userList[index])));
                                 
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_right,

                                  color: Colors.grey[200],
                                  size: 60.0,
                                  
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: userList.length,
                  ),
                )
              ],
            )));
  }
}
