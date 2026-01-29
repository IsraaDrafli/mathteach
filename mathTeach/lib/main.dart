import 'package:flutter/material.dart';
import 'package:smdumpshit/courses.dart/begginer/ShapeCourse.dart';
import 'package:smdumpshit/courses.dart/begginer/add.dart';
import 'package:smdumpshit/courses.dart/begginer/angles.dart';
import 'package:smdumpshit/courses.dart/begginer/areas.dart';
import 'package:smdumpshit/courses.dart/begginer/compare.dart';
import 'package:smdumpshit/courses.dart/begginer/multiplication.dart';
import 'package:smdumpshit/courses.dart/begginer/nums.dart';
import 'package:smdumpshit/courses.dart/begginer/perimeter.dart';
import 'package:smdumpshit/courses.dart/intermediate/algebra/funvar.dart';
import 'package:smdumpshit/courses.dart/intermediate/algebra/limits.dart';
import 'package:smdumpshit/courses.dart/intermediate/algebra/numbersets.dart';
import 'package:smdumpshit/courses.dart/intermediate/algebra/powersqabs.dart';
import 'package:smdumpshit/courses.dart/intermediate/algebra/qua.dart';
import 'package:smdumpshit/courses.dart/intermediate/algebra/sets.dart';
import 'package:smdumpshit/courses.dart/intermediate/geo/pythagores.dart';
import 'package:smdumpshit/courses.dart/intermediate/geo/thales.dart';
import 'package:smdumpshit/courses.dart/intermediate/geo/trigo.dart';
import 'package:smdumpshit/courses.dart/intermediate/geo/vectors.dart';
import 'package:smdumpshit/frags/FavoriteScreen.dart';
import 'package:smdumpshit/pages/advanced.dart';
import 'package:smdumpshit/pages/begin.dart';
import 'package:smdumpshit/pages/inter.dart';
import 'package:smdumpshit/pages/maintpo.dart';
import 'package:smdumpshit/subjects/algebra.dart';
import 'package:smdumpshit/subjects/begAlg.dart';
import 'package:smdumpshit/subjects/begGeo.dart';
import 'package:smdumpshit/subjects/inlevalg.dart';
import 'package:smdumpshit/subjects/inlevgeo.dart';
//import 'package:get/get.dart';
//import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math',
      routes: {
        '/': (context) => maintpo(),
        '/b': (context) => beginnerSc(),
        '/i': (context) => interSc(),
        '/a': (context) => advancedSc(),
        '/areas': (context) => areacourse(),
        '/alg1': (context) => begAlgebra(),
        '/geo1': (context) => begGeo(),
        '/alg2': (context) => intAlgebra(),
        '/geo2': (context) => intGeo(),
        '/alg3': (context) => Algebraiii(),
        //beg courses
        '/numb': (context) => numbs(),
        '/add': (context) => add(),
        '/ang': (context) => angles(),
        '/comp': (context) => compare(),
        '/mul': (context) => multi(),
        '/per': (context) => perim(),
        '/shapes': (context) => ShapeCourse(),
        //intermediate courses
        '/fun': (context) => funct(),
        '/limits': (context) => limits(),
        '/pow': (context) => power(),
        '/numsets': (context) => numbers(),
        '/setts': (context) => setss(),
        '/qua': (context) => quad(),
        '/angl': (context) => angles(),
        '/py': (context) => pytha(),
        '/trig': (context) => TrigoCourse(),
        '/thales': (context) => ThalesCourse(),
        '/vect': (context) => vectors(),
        '/fav': (context) => FavoriteScreen(),
      },
    );
  }
}
