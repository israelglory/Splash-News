// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:splash_news/widget/avatar.dart';

class BigItemNews extends StatefulWidget {
  const BigItemNews({Key? key}) : super(key: key);

  @override
  State<BigItemNews> createState() => _BigItemNewsState();
}

class _BigItemNewsState extends State<BigItemNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              'images/plane.jpg',
              height: 300,
              width: 400,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Contact Lost With Sriwijaya Air Boeing 737-500 After Take Off',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  child: Expanded(
                    child: Row(
                      children: [
                        Avatar(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: const Text('John Smith'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Icon(Icons.timer),
                Container(
                  child: const Text('10 min read'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Expanded(
                    child: Text(
                      'An Illinois town fighter to save its power plant',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Expanded(
                          child: Row(
                            children: [
                              Avatar(),
                              Container(
                                child: const Text('John Smith'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Icon(Icons.timer),
                      Container(
                        child: const Text('10 min read'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),*/