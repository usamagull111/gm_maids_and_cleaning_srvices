import 'package:clean_green_app/mobile_screens/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ContactUsTabMobile extends StatefulWidget {
  const ContactUsTabMobile({super.key});

  @override
  State<ContactUsTabMobile> createState() => _ContactUsTabMobileState();
}

class _ContactUsTabMobileState extends State<ContactUsTabMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          TopBannerMobile(),
        ],
      ),
    );
  }
}