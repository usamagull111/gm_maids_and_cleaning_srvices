import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget ourServices({required double height, required double width}){
  return SliverToBoxAdapter(
    child: Column(
      children: [
        SizedBox(
          height: height * 0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 249, 249, 249),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/our_services_images/patient_care.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/our_services_images/baby_seater.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/our_services_images/cook.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/our_services_images/gurard.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/our_services_images/nany.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/our_services_images/driver.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/bucket.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/bucket.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/bucket.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/bucket.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/bucket.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 224, 223, 223),
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(1, 1)
                  )
                ]
              ),
              
              height: height * 0.4,
              width: width * 0.4,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/bucket.jpg',
                      height: height * 0.4,
                      width: width * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text('       Home Cleaning',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500
                      ),),
                      Text(
                        'Clean and Green Services, \nestablished in 2018 in Pakistan, \nis a trusted team of dedicated cleaning \nprofessionals. We are passionate about \ntransforming spaces to exceed expectations \nand creating clean, healthy, and inviting \nenvironments. With a strong commitment \nto environmental sustainability, we \ndeliver exceptional cleaning services that \nmake a positive impact on your surroundings.',
                        style: TextStyle(
                          fontSize: 3.2.sp,
                          fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
