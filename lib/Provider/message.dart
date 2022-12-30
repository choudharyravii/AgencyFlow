import 'package:agencyflow/Model/feed_model.dart';
import 'package:agencyflow/Model/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messageusers extends ChangeNotifier {
  // ignore: prefer_final_fields
  // String name = "Ravi";

  // final Product _product = Product();
  String shopName = "";
  final List<messageuser> _myList = [
    messageuser(
        username: 'Avetanoo',
        image:
            'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile-01.png',
        time: '7m ago',
        discription: "Hi im Avetano im dummy"),
    messageuser(
        username: 'Janny juj',
        image:
            'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile11.png',
        time: '2m ago',
        discription: "Hi im Janny & im dummy"),
    messageuser(
      username: 'Santos Custudio',
      image: 'https://pbs.twimg.com/media/ExyX1WAVcAwX_YB.jpg',
      time: '10m ago',
      discription: "Hi im Santos Custudio & im dummy",
    ),
    messageuser(
      username: 'Hardy',
      image:
          'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile-03-768x768.png',
      time: '8m ago',
      discription: "Hi im hardy :)",
    ),
    messageuser(
        username: 'Avetanoo',
        image:
            'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile-01.png',
        time: '7m ago',
        discription: "Hi im Avetano im dummy"),
    messageuser(
        username: 'Janny juj',
        image:
            'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile11.png',
        time: '2m ago',
        discription: "Hi im Janny & im dummy"),
    messageuser(
      username: 'Santos Custudio',
      image: 'https://pbs.twimg.com/media/ExyX1WAVcAwX_YB.jpg',
      time: '10m ago',
      discription: "Hi im Santos Custudio & im dummy",
    ),
    messageuser(
      username: 'Hardy',
      image:
          'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile-03-768x768.png',
      time: '8m ago',
      discription: "Hi im hardy :)",
    ),
  ];

  List<messageuser> get myList {
    return [..._myList];
  }
}
