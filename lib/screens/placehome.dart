import 'package:flutter/material.dart';
import 'package:tourism_app_ui/modals/placesmodel.dart';
import 'package:tourism_app_ui/widgets/placeview.dart';

class PlaceHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple
        ,
      ),
      body: ListView.builder(
          itemCount:placelist.length ,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: ()=> Navigator.pushNamed(
                   context,
                  "placeDetails",
                   arguments: index
              ),
              child: PlaceView(
                imagepath: placelist[index].image,
                title: placelist[index].name,
                isFirst: index == 0, 
              ),
            );
          }),
    );
  }
}
