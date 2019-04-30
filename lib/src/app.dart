// import flutter helper library
import 'package:http/http.dart' show get;
import 'package:flutter/material.dart';
import 'models/image_models.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

//create a class that will be our custom widget
//this class must extend the 'Stateless widget' base class
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images=[];

  void fetchImage() async{
    counter++;
    var response= await get('http://www.splashbase.co/api/v1/images/random');
   // http://www.splashbase.co/api/v1/images/random
   //https://api.unsplash.com/photos/random?client_id=a6f1dc6591ba4567e1ad5af5b546b056338e18ee8f629a4de086573191d0d40e
   // https://jsonplaceholder.typicode.com/photos/$counter
    var imageModel=ImageModel.fromJson(json.decode(response.body));
  
    
    setState(() {
       images.add(imageModel);
    });
   
  }

  //must define a 'build' method that
  //returns the widget that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text('Lets See Some Pics'),
          centerTitle: true,
        ),
      ),
    );
  }
}
