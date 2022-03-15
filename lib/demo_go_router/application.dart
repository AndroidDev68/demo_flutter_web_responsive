import 'dart:developer' as developer;
import 'package:demo_rx_dart/demo_go_router/ui/home_page.dart';
import 'package:demo_rx_dart/demo_go_router/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Application extends StatelessWidget {


  final _router = GoRouter(
      initialLocation: "/",
      redirect: (state){
        developer.log("value: state.location: ${state.location}", name:'tz');
        return "/home";
      },
      routes:[
        GoRoute(
          path: "/",
            builder: (context, state){
              return Container(color: Colors.red,);
            }
        ),
        GoRoute(
          path: "/home",
          redirect: (state) {
            developer.log("value: main state2 ${state.location}", name:'tz');
            return null;
          },
          builder: (context, state){
            return HomePage(index: 0,);
          }
        ),
        GoRoute(
          path: '/login',
          builder: (context, state){
            return LoginPage();
          }
        ),
      ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate
    );
  }
}