import 'package:flutter/material.dart';

import '../jsonFile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              width: screenWidth * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                      'Try to create a similar mobile or web app which lists the name and picture and on the tap on one item,navigates to a detailed page which shows the entire data including bio\n',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6), fontSize: 31)),
                  Text('Go to the following link And use the json file as Data',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4), fontSize: 21)),
                  Text(
                      'https://www.dropbox.com/s/zmad1cl6iotx83b/data.json?dl=0',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
                  Text(
                    '(Given in comments to copy)',
                    style: TextStyle(
                        fontSize: 15, color: Colors.black.withOpacity(0.6)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  // userFunction();
                },
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 60.0, 
                  semanticLabel: 'right arrow',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
