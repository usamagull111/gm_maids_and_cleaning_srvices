import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TopBannerMobile extends StatefulWidget {
  const TopBannerMobile({super.key});

  @override
  State<TopBannerMobile> createState() => _TopBannerMobileState();
}

class _TopBannerMobileState extends State<TopBannerMobile> {
  void _openDrawer() {
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        children: [
          SizedBox(width: 10.w),
          Image.asset(
            'assets/images/logo.jpg',
            height: 80.h,
            width: 80.w,
          ),
          SizedBox(width: 220.w),
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            iconSize: 30.r,
            onPressed: _openDrawer,
          ),
        ],
      ),
    );
  }
}

