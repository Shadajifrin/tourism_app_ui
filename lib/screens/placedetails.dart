import 'package:flutter/material.dart';
import 'package:tourism_app_ui/modals/placesmodel.dart';


class PlaceDetails extends StatelessWidget {
  late Places place;

  @override
  Widget build(BuildContext context) {
    //fetching the arguments passed from the previous screen
    final index = ModalRoute.of(context)?.settings.arguments as int;
    //setting the data from that particular index to the place object
    place = placelist[index];
    
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            place.image!,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              place.name!,
              style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              place.description!,
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              place.title!,
              style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 120, // Adjust height according to your need
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: place.additionalImages!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100, // Adjust width of each image container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[300],
                    ),
                    child: Image.network(
                      place.additionalImages![index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25), // Add some spacing between the images and the button
          Center(
            child: GestureDetector(
              onTap: () {
                // Handle button tap
                // You can navigate to another screen or perform any action here
              },
              child: Container(
                width: 200, // Adjust width of the button container
                height: 50, // Adjust height of the button container
                decoration: BoxDecoration(
                  color: Colors.deepPurple, // Deep purple background color
                  borderRadius: BorderRadius.circular(20), // Rounded edges
                ),
                child: Center(
                  child: Text(
                    'Press to Explore',
                    style: TextStyle(
                      color: Colors.white, // White text color
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
