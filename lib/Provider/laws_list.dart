import 'package:agencyflow/Model/document_list_model.dart';
import 'package:agencyflow/Model/feed_model.dart';
import 'package:agencyflow/Model/laws_list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LawsLists extends ChangeNotifier {
  // ignore: prefer_final_fields
  // String name = "Ravi";

  // final Product _product = Product();
  String shopName = "";
  final List<LawsList> _myList = [
    LawsList(
        filename: 'File name#1',
        image: 'assets/Images/folder.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
    LawsList(
        filename: 'File name#2',
        image: 'assets/Images/folder.png',
        name: 'Agency',
        tralimage: 'assets/Images/pathgreen.png'),
    LawsList(
        filename: 'File name#3',
        image: 'assets/Images/folder.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
    LawsList(
        filename: 'File name#4',
        image: 'assets/Images/folder.png',
        name: 'Agency',
        tralimage: 'assets/Images/pathgreen.png'),
  ];

  List<LawsList> get myList {
    return [..._myList];
  }
}