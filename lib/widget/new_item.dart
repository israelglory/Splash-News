// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: 15.0),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'images/plane.jpg',
              height: 100, 
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
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
                              const Icon(Icons.date_range_outlined),
                              Container(
                                child: const Text('Jan. 10, 2021'),
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
          )
        ],
      ),
    );
  }
}
