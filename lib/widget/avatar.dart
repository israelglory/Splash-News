// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  Avatar({ Key? key,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: const AssetImage('images/plane.jpg'),
      radius: 15,
    );
  }
}