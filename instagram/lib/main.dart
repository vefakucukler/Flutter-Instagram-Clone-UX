import 'package:flutter/material.dart';
import 'package:instagram/bottom_menu.dart';
import 'package:instagram/posts.dart';
import 'package:instagram/storys.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int navBarItem = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.camera_alt_outlined),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.send_rounded),
            ),  
          ],
          title: Center(
            child: Image.network("https://i.imgyukle.com/2019/12/13/RWEW5Y.png",
            width: 100,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          ),
          body: 
          Column(
          children: [
            Container(
              child: Storys(),
            ),
            Container(
              child: Posts(),
            ),   
          ],           
          ),
          bottomNavigationBar: BottomMenu(),
        ),
      );
  }
}