import 'package:flutter/material.dart';

import 'screen/intro.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        title : 'Horse Market',
        home: Intro(),
    );
  }
}