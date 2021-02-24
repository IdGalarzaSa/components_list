import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar"),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOXFzO-7YV-TrJev6sihtro8Kge_9RrLONDQ&usqp=CAU"),
            radius: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Text("IG"),
              backgroundColor: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}
