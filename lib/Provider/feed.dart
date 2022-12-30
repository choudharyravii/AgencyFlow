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
          'https://www.kindpng.com/picc/m/690-6904538_men-profile-icon-png-image-free-download-searchpng.png',
      time: '2m ago',
      discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    ),
    Feeduser(
      username: 'zjhorizo Canapes',
      image:
          'https://www.pngitem.com/pimgs/m/360-3603114_client-male-earth-clients-profile-icon-free-png.png',
      time: '2m ago',
      discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    ),
    Feeduser(
      username: 'thorizo Canapes',
      image:
          'https://i.pinimg.com/736x/5f/40/6a/5f406ab25e8942cbe0da6485afd26b71.jpg',
      time: '2m ago',
      discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    ),
     Feeduser(
      username: 'thorizo Canapes',
      image:
          'https://i.pinimg.com/736x/5f/40/6a/5f406ab25e8942cbe0da6485afd26b71.jpg',
      time: '2m ago',
      discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
    ),
  ];

  List<Feeduser> get myList {
    return [..._myList];
  }
}
