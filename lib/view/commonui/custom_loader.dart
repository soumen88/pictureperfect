import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

}