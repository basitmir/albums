import 'package:flutter/material.dart';
import '../models/image_models.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> images;
  ImageList(this.images);

  Widget build(context){
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index){

            return imagebuilder(images[index]);
      },
    );
  }
  Widget imagebuilder(ImageModel images){

       return Container(
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.blueGrey),
               ),
               padding: EdgeInsets.all(15.0),
               margin: EdgeInsets.all(15.0),
             child: Column(
               children : <Widget>[
                 Padding(
                   child: Image.network(images.url),
                   padding: EdgeInsets.only(bottom: 0.0),
                 ),
                 //text goes here
               ],
             ),
            
            //  return Text(images[index].url);
             );
  }
}//class close