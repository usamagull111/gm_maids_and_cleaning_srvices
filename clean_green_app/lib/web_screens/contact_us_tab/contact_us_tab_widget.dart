
import 'package:clean_green_app/web_screens/contact_us_tab/location_container.dart';
import 'package:flutter/material.dart';

Widget contactUs({var height, var width}){
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        const Text(
          'Contact Us',
          style: TextStyle(fontSize: 50),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          height: 2,
          width: width * 0.3,
          color: const Color.fromARGB(255, 209, 209, 209),
        ),
        SizedBox(
          height: height * 0.1,
          
        ),
        Container(
          alignment: Alignment.bottomLeft,
          child: const Text(
            '                                                     Islamabad:',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            '\n                                                                                                           Office # 1, Main Golra Service Road F11/1, Near Street # 1, Khokhar Chowk\n',
            style: TextStyle(fontSize: 16),
          ),
        ),
        LocationContainer(
          height: height,
          width: width * 0.5,
            locationName: 'Click To Open Location',
            latitude: 37.7749, // Your office latitude
            longitude: -122.4194, // Your office longitude
          ),
      ],
    )
  );
}