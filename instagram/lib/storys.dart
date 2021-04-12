import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Storys extends StatefulWidget {
  @override
  _StorysState createState() => _StorysState();
}

class _StorysState extends State<Storys> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          child: ListView.builder(
            itemCount: 25,
            itemBuilder: (context , index) {
              return CircleAvatar(
                backgroundImage: NetworkImage("https://t3.ftcdn.net/jpg/02/36/48/86/360_F_236488644_opXVvD367vGJTM2I7xTlsHB58DVbmtxR.jpg"),
                radius: 30,
              );
            },
            scrollDirection: Axis.horizontal,
            )
        ),
        Divider(
          thickness: 1,
          color: Colors.grey.shade300,
          indent: 20,
          endIndent: 20,
          height: 20,
        ),
      ],
    );
    
  }
}