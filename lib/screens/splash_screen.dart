// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:splash_news/widget/big_news_item.dart';
import 'package:splash_news/widget/new_item.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            BigItemNews(),
            SizedBox(height: 15,),
            NewsItem(),
          ],
        ),
      ),
    );
  }
}