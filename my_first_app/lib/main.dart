// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//stsrting point of application
void main() {
  runApp(
      const MyApp()); //call the runapp method including the app we want to  run
}

//create a statless widget
/*creat a class and extend it from statelesswidget class then the class is to be a child class 
of stteless parent class.*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*override the build method in stateless widget class return a widget*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //meterial app is design fundemantal designs of the widgets like navigations,styles,planes
        debugShowCheckedModeBanner: false, //diable the debug bar

        home: Scaffold(
          //add home property and pass the value as a scaffold widget

          backgroundColor: Colors.grey,
          appBar: AppBar(
              //define the appbar using appbar widget

              title: const Text(
                "This is Flutter application",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              backgroundColor: Colors.blue,
              leading: const Icon(
                Icons.menu,
                size: 24.0,
                color: Colors.white,
              ),
              actions: const [
                Icon(Icons.search, color: Colors.white),
                Icon(Icons.alarm, color: Colors.white)
              ]),

          body: const Center(
              child: Text(
            "Hello World",
            style: TextStyle(fontSize: 30),
          )), //here wrap the text widget with center(to ceter the text in scaffold) in that case use Center widget as a parent class of the text widget
        ));
  }
}
//use const keyword to say the emulator those widgets are constant(never change)