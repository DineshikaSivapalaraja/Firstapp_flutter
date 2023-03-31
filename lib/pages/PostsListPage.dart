import 'package:flutter/material.dart';

class PostsListPageWidget extends StatelessWidget {
  final List<String> entries = <String> ['A', 'B', 'C','S','Z'];
  PostsListPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index){

          //return const Text("Hi ");
          return Center (
              child:  Text(
                  'Hi ${entries[index]} World',
              style: const TextStyle(color: Colors.blue, fontSize: 40),
          ));
      })


    )
    );
  }
}