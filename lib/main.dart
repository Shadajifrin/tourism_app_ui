import 'package:flutter/material.dart';
import 'package:tourism_app_ui/screens/placedetails.dart';
import 'package:tourism_app_ui/screens/placehome.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
 

  @override
  Widget build(BuildContext context) {
   
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     
home:PlaceHome(),
 routes: {
         'placeDetails': (context) => PlaceDetails(),
        
    },
    );
  }

}