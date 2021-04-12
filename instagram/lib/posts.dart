import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index){
          return Column(
      children: [
        ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage("https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg"),
        radius: 25,
      ),
      title: Text("Vefa Küçükler"),
      //style: TextStyle(fontweight: FontWeight.bold),
      trailing: Icon(Icons.more_horiz),
    ),
        Container(
      child: Image.network("https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg"),
    ),

    ListTile(
      trailing: Icon(Icons.bookmark_border),
      leading: Wrap(
        children:[
          Icon(Icons.favorite_border),
          Icon(Icons.mode_comment),
          Icon(Icons.send_rounded),
        ],
        spacing: 15,
      ),
    ),

    

      ],
    );

        }        
        ),  
    );
    
        
  }
}
