import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  @override
  TextEditingController logid = TextEditingController();
  TextEditingController logps = TextEditingController();

  Widget build(BuildContext context) {
    Widget divi() {
      return Divider(
        thickness: 2,
        color: Colors.grey[900],
        endIndent: 30,
        indent: 52,
      );
    }

    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment(0, 0.5),
                    image: AssetImage(
                        'images/photo-1537734796389-e1fc293cf856.jpg'),
                    fit: BoxFit.cover)),
          ),
        ),
        Expanded(
            child: Container(
              color: Colors.black.withOpacity(0.85),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'SIGN IN',
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(width: 95),
                      Text(
                        'SIGN IN',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.orangeAccent),
                      )
                    ],
                  ),
                  SizedBox(height: 35),
                  Padding(
                      padding: EdgeInsets.all(25),
                      child: Form(
                        child: Theme(
                            data: ThemeData(
                                primaryColor: Colors.grey[800],
                                inputDecorationTheme: InputDecorationTheme(
                                    labelStyle: TextStyle(
                                        color: Colors.black, fontSize: 18))),
                            child: Container(
                              child: Column(children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.alternate_email,
                                      color: Colors.orangeAccent,
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: TextField(
                                          style: TextStyle(color: Colors.white),
                                          controller: logid,
                                          decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.grey[500]),
                                              hintText: 'Email Address'),
                                          keyboardType:
                                              TextInputType.emailAddress),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.lock_open,
                                      color: Colors.orangeAccent,
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: TextField(
                                          style: TextStyle(color: Colors.white),
                                          controller: logid,
                                          decoration: InputDecoration(
                                              hintStyle: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.grey[500]),
                                              hintText: 'Password'),
                                          keyboardType: TextInputType.text,
                                          obscureText: true),
                                    )
                                  ],
                                ),
                                SizedBox(height: 65),
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.chat,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.5))),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      child: Icon(
                                        Icons.chat,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white
                                                  .withOpacity(0.5))),
                                    ),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orangeAccent),
                                      child: Icon(Icons.arrow_forward),
                                    )
                                  ],
                                )
                              ]),
                            )),
                      ))
                ],
              ),
            ),
            flex: 4)
      ],
    ));
  }
}
