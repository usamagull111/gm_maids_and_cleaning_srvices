import 'package:clean_green_app/web_screens/home_tab/home_tab_widgets.dart';
import 'package:clean_green_app/web_screens/our_services_tab/our_services_widget.dart';
import 'package:flutter/material.dart';

class OurServicesTab extends StatefulWidget {
  const OurServicesTab({super.key});

  @override
  State<OurServicesTab> createState() => _OurServicesTabState();
}

class _OurServicesTabState extends State<OurServicesTab> {
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
            ourServices(height: height, width: width),
           contactData(height: height, width: width),
           contactDetails(width: width, height: height),
        ],
      ),
    );
  }
}