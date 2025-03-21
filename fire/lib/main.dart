import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(
            child: Text(
              'My App Bar',
              style: TextStyle(
                  fontSize: 25.0,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/fire.png'),
                  backgroundColor: Colors.teal.shade800,
                  radius: 90.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Okyere Samuel Kwarteng',
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 24.5,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                Text(
                  'I Am A Flutter Developer',
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                  width: 200,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 50.0),
                  padding: EdgeInsets.all(17.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.phone,
                        size: 40,
                        color: Colors.teal.shade400,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+233 59 157 6792',
                        style: TextStyle(
                          color: Colors.teal.shade300,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 50.0),
                  padding: EdgeInsets.all(17.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.phone,
                        size: 40,
                        color: Colors.teal.shade400,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+233 59 157 6792',
                        style: TextStyle(
                          color: Colors.teal.shade300,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
