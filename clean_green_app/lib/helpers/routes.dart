import 'package:clean_green_app/mobile_screens/about_us_tab_mobile/about_us_widget.dart';
import 'package:clean_green_app/mobile_screens/contact_us_tab_mobile/contact_us_tab_mobile.dart';
import 'package:clean_green_app/mobile_screens/our_services_tab_mobile/our_services_tab_mobile.dart';
import 'package:clean_green_app/web_screens/about_us_tab/about_us_tab.dart';
import 'package:clean_green_app/web_screens/contact_us_tab/contact_us_tab.dart';
import 'package:clean_green_app/web_screens/home_tab/home_tab.dart';
import 'package:clean_green_app/web_screens/our_services_tab/our_services_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'about-us',
          builder: (BuildContext context, GoRouterState state) {
            return const AboutUsTab();
          },
        ),
        GoRoute(
          path: 'contact-us',
          builder: (BuildContext context, GoRouterState state) {
            return const ContactUsTab();
          },
        ),
        GoRoute(
          path: 'our-services',
          builder: (BuildContext context, GoRouterState state) {
            return const OurServicesTab();
          },
        ),
        GoRoute(
          path: 'home-mobile',
          builder: (BuildContext context, GoRouterState state) {
            return const OurServicesTab();
          },
        ),
         GoRoute(
          path: 'about-us-mobile',
          builder: (BuildContext context, GoRouterState state) {
            return const AboutUsTabMobile();
          },
        ),
        GoRoute(
          path: 'contact-us-mobile',
          builder: (BuildContext context, GoRouterState state) {
            return const ContactUsTabMobile();
          },
        ),
        GoRoute(
          path: 'our-services-mobile',
          builder: (BuildContext context, GoRouterState state) {
            return const OurServicesTabMobile();
          },
        ),
      ],
    ),
  ],
);