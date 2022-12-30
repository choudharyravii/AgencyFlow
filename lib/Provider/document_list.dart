import 'package:agencyflow/Model/document_list_model.dart';
import 'package:agencyflow/Model/feed_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DocumentLists extends ChangeNotifier {
  // ignore: prefer_final_fields
  // String name = "Ravi";

  // final Product _product = Product();
  String shopName = "";
  final List<DocumentList> _myList = [
    DocumentList(
        filename: 'File name#1',
        image: 'assets/Images/folder.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
    DocumentList(
        filename: 'File name#2',
        image: 'assets/Images/folder.png',
        name: 'Agency',
        tralimage: 'assets/Images/pathgreen.png'),
    DocumentList(
        filename: 'File name#3',
        image: 'assets/Images/folder.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
    DocumentList(
        filename: 'File name#4',
        image: 'assets/Images/folder.png',
        name: 'Agency',
        tralimage: 'assets/Images/pathgreen.png'),
    DocumentList(
        filename: 'Document 01',
        image: 'assets/Images/pdf.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
    DocumentList(
        filename: 'Document 02',
        image: 'assets/Images/pdf.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
    DocumentList(
        filename: 'Document 03',
        image: 'assets/Images/pdf.png',
        name: 'Agency',
        tralimage: 'assets/Images/pathgreen.png'),
    DocumentList(
        filename: 'Document 04',
        image: 'assets/Images/pdf.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
  ];

  List<DocumentList> get myList {
    return [..._myList];
  }
}

class DocumentLists2 extends ChangeNotifier {
  // ignore: prefer_final_fields
  // String name = "Ravi";

  // final Product _product = Product();
  String shopName = "";
  final List<DocumentList> _myList = [
    DocumentList(
        filename: 'Document 01',
        image: 'assets/Images/pdf.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
    DocumentList(
        filename: 'Document 02',
        image: 'assets/Images/pdf.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
    DocumentList(
        filename: 'Document 03',
        image: 'assets/Images/pdf.png',
        name: 'Agency',
        tralimage: 'assets/Images/pathgreen.png'),
    DocumentList(
        filename: 'Document 04',
        image: 'assets/Images/pdf.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
    DocumentList(
        filename: 'Document 05',
        image: 'assets/Images/pdf.png',
        name: 'Agency',
        tralimage: 'assets/Images/pathgreen.png'),
    DocumentList(
        filename: 'Document 06',
        image: 'assets/Images/pdf.png',
        name: 'Agency',
        tralimage: 'assets/Images/pathgreen.png'),
    DocumentList(
        filename: 'Document 07',
        image: 'assets/Images/pdf.png',
        name: 'Admin',
        tralimage: 'assets/Images/pathred.png'),
  ];

  List<DocumentList> get myList {
    return [..._myList];
  }
}
