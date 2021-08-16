


import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
var formkey=GlobalKey<FormState>();

Animation<double> animation;
AnimationController controller;
  @override
  void initState(){
    super.initState();
    controller= AnimationController(duration: const Duration(seconds: 2),vsync: this);
    animation= Tween<double>(begin: 0,end: 300).animate(controller);
    animation.addListener((){
      setState(() {
        
      });
      controller.forward();
    }
    
    );



  }

void submit(){
  // ignore: unused_local_variable
  final isValid= formkey.currentState.validate();
}



  Widget build(BuildContext context){
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: const FlutterLogo(),
      ),
    );

 
  }

}