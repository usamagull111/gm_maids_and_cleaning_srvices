import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:clean_green_app/helpers/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

Widget topBanner({var height, var width}) {
  return Container(
      alignment: Alignment.center,
      color: Colors.black87,
      height: 40.h,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: DefaultTextStyle(
        style:  TextStyle(
          color: Colors.white,
          fontSize: 4.sp,
          fontFamily: 'Agne',
        ),
        child: AnimatedTextKit(repeatForever: true, animatedTexts: [
          TypewriterAnimatedText(
              speed: const Duration(microseconds: 100000),
              'We proudly offer 100% Customer Satisfaction & Insured Services'),
        ]),
      ));
}

Widget secondBanner({var height, var width}) {
  return Expanded(
    child: Container(
      height: 130.h,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200.h,
            width: 30.w,
            //color: Colors.blueAccent,
            child: const Image(image: AssetImage('assets/images/logo.jpg')),
          ),
          SizedBox(
            width: 50.w,
          ),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 4.sp,
              color: white,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                    speed: const Duration(milliseconds: 200),
                    'We are Domestic Experts',textStyle: TextStyle(
                      fontSize: 4.sp,
                    
                    )),
              ],
              isRepeatingAnimation: true,
              //repeatForever: true,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          const Icon(
            Icons.watch_later,
            color: Colors.white,
          ),
          Text(
            'We Are Available 24/7',
            style: TextStyle(
              fontSize: 4.sp,
              color: Colors.white),
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            'Call us on : +923194725704\n                    +923184048534',
            style: TextStyle(
              fontSize: 4.sp,
              color: Colors.white),
          ),
          SizedBox(
            width: 8.w,
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                //padding: const EdgeInsets.only(left: 15, top: 15,bottom: 15),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(40)),
                height: 60.h,
                width: 50.w,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ColorizeAnimatedText('BOOK A SERVAY',
                        textStyle: TextStyle(
    fontSize: 4.sp,
    fontFamily: 'Horizon',
    ), colors: colorizeColors)
                  ],
                ),
              ))
        ],
      ),
    ),
  );
}

Widget allTabs({var height, var width, BuildContext? context}) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
         BoxShadow(
                  color: const Color.fromARGB(255, 212, 212, 212).withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2), // changes position of shadow
                ),
      ],
      color: Colors.white
    ),
    height: 55.h,
    //color: Color.fromARGB(255, 217, 217, 217),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            context!.go('/');
          },
          child: Text(
            "HOME",
            style: TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 4.sp),
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        InkWell(
          onTap: () {
            context!.go('/about-us');
          },
          child: Text(
            "ABOUT US",
            style: TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 4.sp),
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        InkWell(
          onTap: (){
            context!.go('/our-services');
          },
          child: Text(
            "OUR SERVICES",
            style: TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 4.sp),
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        InkWell(
          onTap: (){
            context!.go('/contact-us');
          },
          child: Text(
            "CONTACT US",
            style: TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 4.sp),
          ),
        ),
      ],
    ),
  );
}

image01() {
  return const SliverToBoxAdapter(
    child: Image(
      image: AssetImage(
        'assets/images/image01.png',
      ),
      fit: BoxFit.fill,
    ),
  );
}

Widget cleaningServices({var height, var width}) {
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: 70.h,
        ),
        Text(
          'Cleaning Services That Shine',
          style: TextStyle(fontSize: 11.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 2.h,
          width: 170.w,
          color: const Color.fromARGB(255, 209, 209, 209),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 550.h,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Positioned(
                left: 100,
                child: CircleAvatar(
                  radius: 150.r,
                  //backgroundColor: Colors.white,
                  child: const Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/home01.png')),
                ),
              ),
              Positioned(
                left: 400,
                top: 290,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(112, 105, 240, 175),
                  radius: 70.r,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Event \nCleaning',
                    style: TextStyle(
                      fontSize: 5.sp,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 600,
                bottom: 300,
                child: CircleAvatar(
                  radius: 110.r,
                  child: const Image(
                      image: AssetImage('assets/images/home02.png')),
                ),
              ),
              Positioned(
                left: 480,
                bottom: 350,
                child: CircleAvatar(
                  radius: 70.r,
                  backgroundColor: Color.fromARGB(112, 105, 240, 175),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Home \nMaid',
                    style: TextStyle(
                      fontSize: 5.sp,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 850,
                child: CircleAvatar(
                  radius: 140.r,
                  child: const Image(
                      image: AssetImage('assets/images/home03.png')),
                ),
              ),
              Positioned(
                left: 1000,
                bottom: 390,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(112, 105, 240, 175),
                  radius: 70.r,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Commercial \nCleaning',
                    style: TextStyle(
                      fontSize: 5.sp,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 1220,
                bottom: 300,
                child: CircleAvatar(
                  radius: 110.r,
                  child: const Image(
                      image: AssetImage('assets/images/home04.png')),
                ),
              ),
              Positioned(
                left: 1200,
                bottom: 200,
                child: CircleAvatar(
                  radius: 70.r,
                  backgroundColor: Color.fromARGB(112, 105, 240, 175),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Industrial \nCleaning',
                    style: TextStyle(
                      fontSize: 5.sp,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 130.h,
          width: double.infinity,
          color: Colors.greenAccent,
          child: Text(
            'Get Started With GM Clean Services',
            style: TextStyle(color: Colors.white, fontSize: 10.sp),
          ),
        ),
      ],
    ),
  );
}

Widget howItWork({var height, var width}) {
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: 70.h,
        ),
        Text(
          'How It Works',
          style: TextStyle(fontSize: 11.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 2.h,
          width: 100.w,
          color: const Color.fromARGB(255, 209, 209, 209),
        ),
        SizedBox(
          height: 100.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/home001.png')),
                  Text(
                    'Starts with a Phone Call',
                    style: TextStyle(fontSize: 5.sp),
                  ),
                  Text(
                      'whether you call in directly, or contact us digitally, \n     our team is standing by 7 days a week',
                      style: TextStyle(
                        fontSize: 3.5.sp,
                      ),)
                ],
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/home002.png')),
                  Text(
                    'Arrange a Survey',
                    style: TextStyle(fontSize: 5.sp),
                  ),
                  Text(
                      'We work together to examine your needs, evaluate \n     your options, and answer your questions',
                      style: TextStyle(
                        fontSize: 3.5.sp,
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Container(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/home003.png')),
                  Text(
                    'Schedule Service Exclusively',
                    style: TextStyle(fontSize: 5.sp),
                  ),
                  Text(
                      'We reserve a service date, go over expectations, \n        and you’re all set! it’s that easy',
                      style: TextStyle(
                        fontSize: 3.5.sp,
                      ))
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}

whyTeamCG({var height, var width}) {
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: 100.h,
        ),
        Text(
          'Why Team GM Clean Services',
          style: TextStyle(fontSize: 11.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 2.h,
          width: 170.w,
          color: const Color.fromARGB(255, 209, 209, 209),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'Choose Us Because Of Our Reputation For Excellence.',
          style: TextStyle(fontSize: 5.5.sp),
        ),
        SizedBox(
          height: 25.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 70.w,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0001.png')),
                  Text(
                    'Verified',
                    style: TextStyle(fontSize: 5.5.sp),
                  ),
                  Text(
                      'All our cleaning associates \nare NADRA and Police Verified.',
                      style: TextStyle(
                        fontSize: 3.5.sp
                      ),)
                ],
              ),
            ),
            SizedBox(
              width: 25.w,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0002.png')),
                  Text(
                    'Locally Owned & Operated',
                    style: TextStyle(fontSize: 5.5.sp),
                  ),
                  Text(
                      'You can support your local businesses while \nstill getting the benefits of a big-name brand.',
                      style: TextStyle(fontSize: 3.5.sp),)
                ],
              ),
            ),
            SizedBox(
              width: 25.w,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0003.png')),
                  Text(
                    'Quality Control',
                    style: TextStyle(fontSize: 5.5.sp),
                  ),
                  Text(
                      'Regular quality controls for\n consistent high standards',
                      style: TextStyle(fontSize: 3.5.sp),
                      )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 70.w,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0004.png')),
                  Text(
                    'Guarantee',
                    style: TextStyle(fontSize: 5.5.sp),
                  ),
                  Text(
                      'Our services are backed by \na 24-hour re-clean guarantee.',
                      style: TextStyle(fontSize: 3.5.sp),)
                ],
              ),
            ),
            SizedBox(
              width: 43.w,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0005.png')),
                  Text(
                    'Flexibility',
                    style: TextStyle(fontSize: 5.5.sp),
                  ),
                  Text('A flexible service tailored \nto your particular needs',
                  style: TextStyle(fontSize: 3.5.sp))
                ],
              ),
            ),
            SizedBox(
              width: 33.w,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0006.png')),
                  Text(
                    'Service Reliability',
                    style: TextStyle(fontSize: 3.5.sp),
                  ),
                  Text(
                      'First-rate service reliability through\n the managed absence cover',
                      style: TextStyle(fontSize: 3.5.sp))
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}

certifiedBy({var height, var width}) {
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: 100.h,
        ),
        Text(
          'Certified By',
          style: TextStyle(fontSize: 11.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 2.h,
          width: 170.w,
          color: const Color.fromARGB(255, 209, 209, 209),
        ),
        SizedBox(
          height: 10.h,
        ),
        Image(
            height: 250.h,
            //width: width * 1,
            image: const AssetImage('assets/images/home_iso.png')),
            SizedBox(height: 25.h,),
            const Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/home_data.png'),)
      ],
      
    ),
  );
}


someFacts({var height, var width}){
  return SliverToBoxAdapter(
    child: Column(
      children: [
SizedBox(
          height: 50.h,
        ),
        Text(
          'Some Facts About Us',
          style: TextStyle(fontSize: 11.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 2.h,
          width: 170.w,
          color: const Color.fromARGB(255, 209, 209, 209),
        ),
        SizedBox(
          height: 50.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.r,
              child: Container(
                alignment: Alignment.center,
                //height: height * 0.25,
                //width: width * 0.1225,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/jobs.png'))
                ),
                child: Text('16K+\nJobs',style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 8.sp
                ),),
              ),
            ),
            SizedBox(
              width: 40.w,
            ),
             CircleAvatar(
              radius: 80.r,
               child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/houses.png'))
                ),
                child: Text('  3.1K+\nHouses',style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 8.sp
                ),),
                           ),
             ),
            SizedBox(
              width: 40.w,
            ),
             CircleAvatar(
              radius: 80.r,
               child: Container(
                alignment: Alignment.center,
                //height: height * 0.25,
                //width: width * 0.1225,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/followers.png'))
                ),
                child: Text('    60K+\nFollowers',style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontSize: 8.sp
                ),),
                           ),
             ),
          ],
        )
      ],
    ),
  );
}


ourProjects({var width, var height}){
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        Text(
          'Our Projects',
          style: TextStyle(fontSize: 11.sp),
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
          height: height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: height * 0.2,
              width: width * 0.12,
              image: AssetImage('assets/images/img01.jpg')),
            Image(
              height: height * 0.2,
              width: width * 0.113,
              image: AssetImage('assets/images/img02.jpg')),
            Image(
              height: height * 0.2,
              width: width * 0.15,
              image: AssetImage('assets/images/img03.jpg')),
            Image(
              height: height * 0.2,
              width: width * 0.15,
              image: AssetImage('assets/images/img04.jpg')),
              Image(
              height: height * 0.2,
              width: width * 0.15,
              image: AssetImage('assets/images/img05.jpg')),
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: height * 0.2,
              width: width * 0.12,
              image: AssetImage('assets/images/img06.jpg')),
            Image(
              height: height * 0.2,
              width: width * 0.113,
              image: AssetImage('assets/images/img07.jpg')),
            Image(
              height: height * 0.2,
              width: width * 0.15,
              image: AssetImage('assets/images/workers.jpg')),
            Image(
              height: height * 0.2,
              width: width * 0.15,
              image: AssetImage('assets/images/bucket.jpg')),
              Image(
              height: height * 0.2,
              width: width * 0.15,
              image: AssetImage('assets/images/cleaning.jpg')),
          ],
        ),
        // SizedBox(
        //   height: height * 0.02,
        // ),
      ],
    ),
  );
}


ourClients({var height, var width}){
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        Text(
          'Our Clients',
          style: TextStyle(fontSize: 11.sp),
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
          height: height * 0.02,
        ),
      ],
    ),
  );
}

contactData({var height, var width}) {
  return SliverToBoxAdapter(
    child: Container(
      height: height * 0.18,
      width: width,
      color: const Color.fromARGB(255, 235, 235, 235),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.16,
            width: width * 0.09,
            //color: Colors.blueAccent,
            child: const Image(image: AssetImage('assets/images/logo.jpg')),
          ),
          SizedBox(
            width: height * 0.1,
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                    speed: const Duration(milliseconds: 200),
                    'We are Domestic Experts!',
                    textStyle: TextStyle(fontSize: 3.7.sp)),
              ],
              isRepeatingAnimation: true,
              //repeatForever: true,
            ),
          ),
          SizedBox(
            width: height * 0.04,
          ),
          const Icon(
            Icons.watch_later,
            //color: Colors.white,
          ),
          Text(
            'We Are Available 24/7',
            style: TextStyle(color: Colors.black,fontSize: 3.7.sp),
          ),
          SizedBox(
            width: height * 0.04,
          ),
          Text(
            'Call us on : +923194725704\n                    +923184048534',
            style: TextStyle(color: Colors.black,fontSize: 3.7.sp),
          ),
          SizedBox(
            width: height * 0.04,
          ),
          TextButton(
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                //padding: const EdgeInsets.only(left: 15, top: 15,bottom: 15),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(40)),
                height: height * 0.08,
                width: width * 0.15,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ColorizeAnimatedText('BOOK A SERVAY',
                        textStyle: TextStyle(
  fontSize: 4.sp,
  fontFamily: 'Horizon',
), colors: colorizeColors)
                  ],
                ),
              ))
        ],
      ),
    ),
  );
}

contactDetails({var height, var width}) {
  return SliverToBoxAdapter(
    child: Container(
      color: Colors.black,
      height: height * 0.2,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          //i want to make my text to left side
          Align(
            alignment: Alignment.centerLeft,
          child: Text('           Islamabad:',style: TextStyle(
            color: Colors.white,
            fontSize: 6.sp
          ),)),
          Text(
            'Office # 1, Main Golra Service Road F11/1, Near Street # 1, Khokhar Chowk',
            style: TextStyle(color: Colors.white,fontSize: 4.sp),
          ),
        ],
      ),
    ),
  );
}
