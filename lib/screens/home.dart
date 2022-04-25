// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:splash_news/widget/avatar.dart';
import 'package:splash_news/widget/big_news_item.dart';
import 'package:splash_news/widget/new_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        top: true,
        bottom: true,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black12,
              //floating: true,
              //pinned: true,
              actions: [
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ],
              title: Row(
                children: [
                  Avatar(),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      child: const Text('10 Jan, 2021', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Heading(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
                child: BigItemNews(),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: 15.0),
                height: 80,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildChip('All', Colors.blue.shade100),
                    _buildChip('Information', Colors.transparent),
                    _buildChip('Media', Colors.transparent),
                    _buildChip('Magazine', Colors.transparent),
                    _buildChip('Business', Colors.transparent),
                    _buildChip('Sport', Colors.transparent)
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                child: Column(
                  children: [
                    NewsItem(),
                    NewsItem(),
                    NewsItem(),
                    NewsItem(),
                    NewsItem(),
                    NewsItem(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Breaking News',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildChip(String label, Color? color) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: ChoiceChip(
      labelPadding: EdgeInsets.all(2.0),
      /*avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(label[0].toUpperCase()),
      ),*/
      label: Text(
        label,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: color,

      shape: StadiumBorder(
        side: BorderSide(
          width: 1,
          color: Colors.grey,
        )),
      padding: EdgeInsets.all(8.0),
      selected: true,
      selectedColor: Colors.blue.shade100,
    ),
  );
}
