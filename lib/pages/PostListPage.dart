import 'package:flutter/material.dart';

class PostListPageWidget extends StatelessWidget {
  const PostListPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Posts list"),
      //   titleTextStyle: Center,
      // ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.blue,
            child:const Center(child: Text('Phase A')),
          ),

          Container(
            height: 60,
            color: Colors.blueGrey,
            child:const Center(child: Text('Phase B')),
          ),

          Container(
            height: 70,
            color: Colors.lightBlueAccent,
            child:const Center(child: Text('Phase C')),
          ),

          Container(
            height: 80,
            color: Colors.blueGrey,
            child:const Center(child: Text('Phase D')),
          ),
        ],
      ));
  }
}