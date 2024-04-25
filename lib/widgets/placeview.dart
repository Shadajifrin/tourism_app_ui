import 'package:flutter/material.dart';

class PlaceView extends StatelessWidget {
  final String? imagepath;
  final String? title;
  final bool isFirst;

  PlaceView({this.imagepath, this.title, this.isFirst = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isFirst)
          Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "Popular",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        
        Stack(
          children: [
            Image.network(
              imagepath!,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Text(
                title!,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
