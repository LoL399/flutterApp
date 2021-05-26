import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:movies/signin.dart';
import 'package:movies/ui/main_page.dart';


class LottiePage extends StatefulWidget {
@override
_LottiePageState createState() => _LottiePageState();
}

class _LottiePageState extends State<LottiePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
  // 5s over, navigate to a new page
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MainPage()),
  );
});

  }
@override
Widget build(BuildContext context) {
	return Scaffold(
	// appBar: AppBar(
	// 	title: Text("GeeksForGeeks"),
	// 	backgroundColor: Colors.green,
	// 	automaticallyImplyLeading: false,
	// 	centerTitle: true,
	// ),
		body: Center(
		child: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
			Lottie.network(
				'https://assets6.lottiefiles.com/packages/lf20_dodHbH/video.json',
				height: 200.0,
				repeat: true,
				reverse: true,
				animate: true,
			),

			],
		),
		),
	);
}
}
