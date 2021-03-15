import 'package:flutter/material.dart';

import 'loginpage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "images/photo-1537734796389-e1fc293cf856.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 485, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'BAKING LESSONS',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text('MASTER THE ART OF BAKING',
                          style: TextStyle(fontSize: 25, color: Colors.white)),
                      SizedBox(
                        height: 55,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 45,
                            width: 165,
                            color: Colors.orangeAccent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'START LEARNING',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Icon(Icons.arrow_forward, size: 15.0)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[800],
                        thickness: 5,
                        indent: 115,
                        endIndent: 115,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
