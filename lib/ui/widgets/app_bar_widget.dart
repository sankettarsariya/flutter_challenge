import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [Padding(
        padding: EdgeInsets.only(right: 17.0),
        child: Icon(Icons.search,size: 30,),
      )],
      title: const Text('Articles',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 27),),
    );
  }
}
