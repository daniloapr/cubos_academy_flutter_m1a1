import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'blocs/global_bloc.dart';
import 'main_screen.dart';
import 'navigation/sailor_routes.dart';

void main() {
  SailorRoutes.createRoutes();

  runApp(BlocProvider(
    blocs: [Bloc((i) => GlobalBloc())],
    child: MaterialApp(
      title: 'Capacitação em Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'montserrat',
      ),
      home: MainScreen(),
      navigatorKey: SailorRoutes.sailor.navigatorKey,
      onGenerateRoute: SailorRoutes.sailor.generator(),
    ),
  ));
}
