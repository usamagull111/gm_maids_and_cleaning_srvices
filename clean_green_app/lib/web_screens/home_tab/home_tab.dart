import 'package:clean_green_app/helpers/routes.dart';
import 'package:clean_green_app/web_screens/home_tab/home_tab_widgets.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clean & Green',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
      //home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        //foregroundColor: Colors.transparent,
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
          image01(),
          cleaningServices(height: height, width: width),
          howItWork(height: height, width: width),
          whyTeamCG(height: height, width: width),
          certifiedBy(width: width, height: height),
          someFacts(width: width, height: height),
          ourProjects(width: width, height: height),
          ourClients(width: width, height: height),
          contactData(height: height, width: width),
          contactDetails(width: width, height: height),
        ],
      ),
    );
  }
}
