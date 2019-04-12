// import flutter helper library
 import 'package:flutter/material.dart';

class App extends StatefulWidget{
      createState(){
        return AppState();
      }
}
 //create a class that will be our custom widget 
 //this class must extend the 'Stateless widget' base class
class AppState extends State<App>{

  int counter=0;
 //must define a 'build' method that 
 //returns the widget that *this* widget will show
  Widget build(context){
    return  MaterialApp(
    home:Scaffold(
      body: Text('$counter'),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter+=1;
          });
        },
      ), 
      appBar: AppBar(
        title: Text('Lets See Some Pics'),
        centerTitle: true,
      ),
    ),
  );
  
  }

}