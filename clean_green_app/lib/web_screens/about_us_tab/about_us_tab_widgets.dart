import 'package:flutter/material.dart';

Widget about({var height, var width}){
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        const Text(
          'About Our Company',
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
        Container(
          height: height * 0.71,
          color: Color.fromARGB(255, 241, 241, 241),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                height: height * 0.6,
                image: AssetImage(
                'assets/images/about_us_image.jpg'),),
                Text(textAlign: TextAlign.start,
                softWrap: true,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                  '    Clean and Green Services, established in 2018 in Pakistan, is a trusted team of\n    dedicated cleaning professionals. We are passionate about transforming spaces to\n    exceed expectations and creating clean, healthy, and inviting environments. With a\n    strong commitment to environmental sustainability, we deliver exceptional cleaning\n    services that make a positive impact on your surroundings.\n\n\n    Our attention to detail, reliable staff, and eco-friendly practices set us apart from\n    the competition. We prioritize every aspect of our service to ensure the highest\n    quality results and customer satisfaction. From residential to commercial spaces,\n    we bring expertise, reliability, and a greener approach to every cleaning project.\n\n\n    Experience the difference with Clean and Green Services. Trust us to make your\n    space shine and enjoy the benefits of our professional cleaning services.')
            ],
          ),
        )
      ],
    ),
  );
}


Widget ourMission({var height, var width}){
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        const Text(
          'Our Mission',
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
        Text(
          softWrap: true,
          textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                  'At Clean and Green, our mission is to provide exceptional cleaning services while prioritizing environmental sustainability. With a commitment to eco-\nfriendly practices and products, we aim to create clean and healthy spaces that minimize our impact on the planet. Our goal is to exceed client expectations\nby delivering impeccable results while promoting a greener future. Join us in our mission to make a difference through clean and sustainable practices.')
      ],
    ),
  );
}


Widget vision({var height, var width}){
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: height * 0.1,
        ),
        const Text(
          'Vision',
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
        Text(
          textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                  'Empowering a sustainable future through eco-friendly cleaning solutions. Leading the way in creating cleaner and greener spaces for generations to come.')
      ],
    ),
  );
}