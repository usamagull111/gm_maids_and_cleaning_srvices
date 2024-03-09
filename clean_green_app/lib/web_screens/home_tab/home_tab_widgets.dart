import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:clean_green_app/helpers/colors/colors.dart';
import 'package:clean_green_app/helpers/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';

Widget topBanner({var height, var width}) {
  return Container(
      alignment: Alignment.center,
      color: Colors.black87,
      height: height * 0.05,
      width: width,
      padding: const EdgeInsets.all(10),
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
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
  return Container(
    height: height * 0.18,
    width: width,
    color: Colors.black,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: height * 0.16,
          width: width * 0.09,
          //color: Colors.blueAccent,
          child: const Image(image: AssetImage('assets/images/logo.png')),
        ),
        SizedBox(
          width: height * 0.1,
        ),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 16.0,
            color: white,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText(
                  speed: const Duration(milliseconds: 200),
                  'We are Cleaning Experts!'),
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
          color: Colors.white,
        ),
        const Text(
          'Mon - Sun 9:00AM - 8:00 PM',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: height * 0.04,
        ),
        const Text(
          'Call us on : 051-111-111-720',
          style: TextStyle(color: Colors.white),
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
                      textStyle: colorizeTextStyle, colors: colorizeColors)
                ],
              ),
            ))
      ],
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
    height: 60,
    //color: Color.fromARGB(255, 217, 217, 217),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            context!.go('/');
          },
          child: const Text(
            "HOME",
            style: TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        SizedBox(
          width: width * 0.08,
        ),
        InkWell(
          onTap: () {
            context!.go('/about-us');
          },
          child: const Text(
            "ABOUT US",
            style: TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        SizedBox(
          width: width * 0.08,
        ),
        const Text(
          "OUR SERVICES",
          style: TextStyle(
              color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          width: width * 0.08,
        ),
        InkWell(
          onTap: (){
            context!.go('/contact-us');
          },
          child: const Text(
            "CONTACT US",
            style: TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16),
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
          height: height * 0.1,
        ),
        const Text(
          'Cleaning Services That Shine',
          style: TextStyle(fontSize: 50),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          height: 2,
          width: width * 0.5,
          color: const Color.fromARGB(255, 209, 209, 209),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          height: height * 0.8,
          width: double.infinity,
          //color: const Color.fromARGB(70, 255, 64, 128),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Positioned(
                left: 100,
                child: Container(
                  width: width * 0.25, // Adjust according to your requirement
                  height: height * 0.5, // Adjust according to your requirement
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500)
                      //shape: BoxShape.circle,
                      //color: const Color.fromARGB(79, 33, 149, 243), // Change color as needed
                      ),
                  child: const Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/home01.png')),
                ),
              ),
              Positioned(
                left: 420,
                top: 190,
                child: Container(
                  padding: const EdgeInsets.only(top: 120),
                  width: width * 0.1,
                  height: width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(112, 105, 240, 175),
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Event \nCleaning',
                    style: TextStyle(
                      fontSize: 20,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 575,
                bottom: 100,
                child: Container(
                  width: width * 0.2,
                  height: width * 0.4,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Color.fromARGB(91, 181, 115, 110),
                  ),
                  child: const Image(
                      image: AssetImage('assets/images/home02.png')),
                ),
              ),
              Positioned(
                left: 480,
                bottom: 350,
                child: Container(
                  padding: const EdgeInsets.only(top: 120),
                  width: width * 0.1,
                  height: width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(112, 105, 240, 175),
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Home \nMaid',
                    style: TextStyle(
                      fontSize: 20,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 800,
                child: Container(
                  width: width * 0.25,
                  height: height * 0.5,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: const Color.fromARGB(79, 33, 149, 243),
                  ),
                  child: const Image(
                      image: AssetImage('assets/images/home03.png')),
                ),
              ),
              Positioned(
                left: 1000,
                bottom: 350,
                child: Container(
                  padding: const EdgeInsets.only(top: 120),
                  width: width * 0.1,
                  height: width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(112, 105, 240, 175),
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Commercial \nCleaning',
                    style: TextStyle(
                      fontSize: 20,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 1220,
                bottom: 100,
                child: Container(
                  width: width * 0.2,
                  height: width * 0.4,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Color.fromARGB(91, 181, 115, 110),
                  ),
                  child: const Image(
                      image: AssetImage('assets/images/home04.png')),
                ),
              ),
              Positioned(
                left: 1200,
                bottom: 100,
                child: Container(
                  padding: const EdgeInsets.only(top: 120),
                  width: width * 0.1,
                  height: width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(112, 105, 240, 175),
                  ),
                  child: const Text(
                    textAlign: TextAlign.center,
                    'Industrial \nCleaning',
                    style: TextStyle(
                      fontSize: 20,
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
          height: height * 0.2,
          width: double.infinity,
          color: Colors.greenAccent,
          child: const Text(
            'Get Started With GM Clean Services',
            style: TextStyle(color: Colors.white, fontSize: 40),
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
          height: height * 0.1,
        ),
        const Text(
          'How It Works',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Column(
                children: [
                  Image(image: AssetImage('assets/images/home001.png')),
                  Text(
                    'Starts with a Phone Call',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                      'whether you call in directly, or contact us digitally, \n     our team is standing by 7 days a week')
                ],
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              child: const Column(
                children: [
                  Image(image: AssetImage('assets/images/home002.png')),
                  Text(
                    'Arrange a Survey',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                      'We work together to examine your needs, evaluate \n     your options, and answer your questions')
                ],
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              child: const Column(
                children: [
                  Image(image: AssetImage('assets/images/home003.png')),
                  Text(
                    'Schedule Service Exclusively',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                      'We reserve a service date, go over expectations, \n        and you’re all set! it’s that easy')
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
          height: height * 0.1,
        ),
        const Text(
          'Why Team C&G',
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
          height: height * 0.02,
        ),
        const Text(
          'Choose Us Because Of Our Reputation For Excellence.',
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.23,
            ),
            Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0001.png')),
                  Text(
                    'Verified',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                      'All our cleaning associates \nare NADRA and Police Verified.')
                ],
              ),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0002.png')),
                  Text(
                    'Locally Owned & Operated',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                      'You can support your local businesses while \nstill getting the benefits of a big-name brand.')
                ],
              ),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0003.png')),
                  Text(
                    'Quality Control',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                      'Regular quality controls \nfor consistent high standards')
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.235,
            ),
            Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0004.png')),
                  Text(
                    'Guarantee',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                      'Our services are backed by \na 24-hour re-clean guarantee.')
                ],
              ),
            ),
            SizedBox(
              width: width * 0.095,
            ),
            Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0005.png')),
                  Text(
                    'Flexibility',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text('A flexible service tailored \nto your particular needs')
                ],
              ),
            ),
            SizedBox(
              width: width * 0.07,
            ),
            Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/home0006.png')),
                  Text(
                    'Service Reliability',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                      'First-rate service reliability \nthrough the managed absence cover')
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
          height: height * 0.1,
        ),
        const Text(
          'Certified By',
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
          height: height * 0.02,
        ),
        Image(
            height: height * 0.4,
            //width: width * 1,
            image: const AssetImage('assets/images/home_iso.png')),
            SizedBox(height: height * 0.05,),
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
          height: height * 0.1,
        ),
        const Text(
          'Some Facts About Us',
          style: TextStyle(fontSize: 50),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          height: 2,
          width: width * 0.4,
          color: const Color.fromARGB(255, 209, 209, 209),
        ),
        SizedBox(
          height: height * 0.08,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: height * 0.25,
              width: width * 0.1225,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/jobs.png'))
              ),
              child: Text('16K+\nJobs',style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 35
              ),),
            ),
            SizedBox(
              width: width * 0.12,
            ),
             Container(
              alignment: Alignment.center,
              height: height * 0.25,
              width: width * 0.1225,
              
             // width: width * 0.2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/houses.png'))
              ),
              child: Text('  3.1K+\nHouses',style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 35
              ),),
            ),
            SizedBox(
              width: width * 0.12,
            ),
             Container(
              alignment: Alignment.center,
              height: height * 0.25,
              width: width * 0.1225,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/followers.png'))
              ),
              child: Text('    60K+\nFollowers',style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 35
              ),),
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
        const Text(
          'Our Projects',
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
        const Text(
          'Our Clients',
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
            child: const Image(image: AssetImage('assets/images/logo.png')),
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
                    'We are Cleaning Experts!'),
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
          const Text(
            'Mon - Sun 9:00AM - 8:00 PM',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: height * 0.04,
          ),
          const Text(
            'Call us on : 051-111-111-720',
            style: TextStyle(color: Colors.black),
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
                        textStyle: colorizeTextStyle, colors: colorizeColors)
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
      height: height * 0.5,
    ),
  );
}
