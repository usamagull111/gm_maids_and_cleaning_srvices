
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationContainer extends StatelessWidget {
  var height;
  var width;
  final String locationName;
  final double latitude;
  final double longitude;

  LocationContainer({
    required this.locationName,
    required this.latitude,
    required this.longitude,
    required this.height,
    required this.width
  });

  void _openMaps() async {
    String mapsUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    if (await canLaunch(mapsUrl)) {
      await launch(mapsUrl);
    } else {
      throw 'Could not launch $mapsUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openMaps,
      child: Container(
        width: width * 0.7,
        height: height * 0.5,
        //color: const Color.fromARGB(255, 193, 193, 193),
        child: Column(
          children: [
            Text(locationName,style: TextStyle(fontWeight: FontWeight.bold),),
            Image.asset('assets/images/location.webp')
          ],
        ),
      ),
    );
  }
}