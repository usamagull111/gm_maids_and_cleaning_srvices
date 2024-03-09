import 'package:clean_green_app/web_screens/about_us_tab/about_us_tab_widgets.dart';
import 'package:clean_green_app/web_screens/home_tab/home_tab_widgets.dart';
import 'package:flutter/material.dart';

class AboutUsTab extends StatelessWidget {
  const AboutUsTab({super.key});

  @override
  Widget build(BuildContext context) {
var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(0, 150, 84, 84),
        foregroundColor: Colors.transparent,
        onPressed: (){},
        child: const Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/whatsapp_logo.png'),)),    
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 251,
            floating: true,
            snap: true,
            flexibleSpace: Column(
              children: [
                topBanner(height: height, width: width),
                secondBanner(height: height, width: width),
                allTabs(height: height, width: width, context: context),
              ],
            ),
          ),
          about(height: height, width: width),
          ourMission(height: height, width: width),
          vision(height: height, width: width),
          // certifiedBy(width: width, height: height),
          // someFacts(width: width, height: height),
          // ourProjects(width: width, height: height),
          // ourClients(width: width, height: height),
           contactData(height: height, width: width),
           contactDetails(width: width, height: height),
        ],
      ),
    );
  }
}