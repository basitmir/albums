//import flutter library to get content on the screen
import 'package:flutter/material.dart';

//define the main function to run when our app starts

void main(){
  
  //create a text widget to show text on the screen
  var app= MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('Lets See Some Pics'),
      ),
    ),
  );
  
  
  //take that widget and display on the screen
  runApp(app);

}