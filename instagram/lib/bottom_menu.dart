import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget { 
  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  int deger = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(    

        currentIndex: deger,
        onTap: (index){
          setState(() {
            deger=index;
          });
        },
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Anasayfa",
          backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Arama",
          backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.add_box_rounded),
          label: "Ekle",
          backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "Beğeni",
          backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_sharp),
          label: "Profil",
          backgroundColor: Colors.blue,
          ),
      ],
      type: BottomNavigationBarType.fixed,
      
      );
      
  }
}