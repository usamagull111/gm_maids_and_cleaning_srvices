import 'package:clean_green_app/helpers/routes.dart';
import 'package:clean_green_app/mobile_screens/app_bar.dart';
import 'package:clean_green_app/web_screens/home_tab/home_tab_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        title: 'Clean & Green',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
        //home: const MyHomePage(),
      ),
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){},
        child: const Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/whatsapp_logo.png'),
        )
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // Check if the width is less than a typical mobile width (e.g., 600 pixels)
          bool isMobile = constraints.maxWidth < 600;

          // Use different layouts for mobile and larger devices
          if (isMobile) {
            return mobileLayout(context, constraints.maxHeight, constraints.maxWidth);
          } else {
            return webLayout(context, constraints.maxHeight, constraints.maxWidth);
          }
        }
      ),
      endDrawer: Container(
        width: 140.w,
        height: 160.h,
        margin: EdgeInsets.only(bottom: 350.h), // Adjust the top margin as needed
        child: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Home',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp,),),
                onTap: () {
                  // Handle Home Tap
                  context.go('/home-mobile');
                },
              ),
              ListTile(
                title: Text('About Us',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp,),),
                onTap: () {
                  // Handle About Us Tap
                  context.go('/about-us-mobile');
                },
              ),
              ListTile(
                title: Text('Our Services',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp,),),
                onTap: () {
                  // Handle Our Services Tap
                  context.go('/our-services-mobile');
                },
              ),
              ListTile(
                title: Text('Contact Us',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp,),),
                onTap: () {
                  // Handle Contact Us Tap
                  context.go('/contact-us-mobile');
                },
              ),
            ],
          ),
        ),
      ),

    );
  }

  Widget mobileLayout(BuildContext context, double height, double width) {
    // Define mobile-specific layout
    return Column(
      children: [
        TopBannerMobile(),
        
      ],
    );
  }

  Widget webLayout(BuildContext context, double height, double width) {
    // Define web-specific layout
    return CustomScrollView(
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
    );
  }
}

