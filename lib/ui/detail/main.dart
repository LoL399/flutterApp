import 'package:flutter/material.dart';

import 'package:movies/ui/detail/movie_api.dart';
import 'package:movies/ui/detail/movie_details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: const Color(0xFFFF5959),
      ),
      home: MovieDetailsPage(testMovie),
    );
  }
}
