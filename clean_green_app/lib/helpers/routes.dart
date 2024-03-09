import 'package:clean_green_app/web_screens/about_us_tab/about_us_tab.dart';
import 'package:clean_green_app/web_screens/contact_us_tab/contact_us_tab.dart';
import 'package:clean_green_app/web_screens/home_tab/home_tab.dart';
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
      ],
    ),
  ],
);