import 'package:agencyflow/Model/feed_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feedusers extends ChangeNotifier {
  // ignore: prefer_final_fields
  // String name = "Ravi";

  // final Product _product = Product();
  String shopName = "";
  final List<Feeduser> _myList = [
    Feeduser(
      username: 'Chorizo Canapes',
      image:
          'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile-01.png',
      time: '2m ago',
      discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    ),
    Feeduser(
      username: 'Rahorizo Canapes',
      image:
          'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile11.png',
      time: '2m ago',
      discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    ),
    Feeduser(
      username: 'Thorizo Canapes',
      image: 'https://pbs.twimg.com/media/ExyX1WAVcAwX_YB.jpg',
      time: '2m ago',
      discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    ),
    Feeduser(
      username: 'Lahorizo Canapes',
      image:
          'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile-03-768x768.png',
      time: '2m ago',
      discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    ),
    Feeduser(
      username: 'Lahorizo Canapes',
      image:
          'https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile-01.png',
      time: '2m ago',
      discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    ),
  ];

  List<Feeduser> get myList {
    return [..._myList];
  }
}
