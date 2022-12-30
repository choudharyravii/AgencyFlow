import 'package:agencyflow/Model/feed_model.dart';
import 'package:agencyflow/Model/office_managment_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfficeLists extends ChangeNotifier {
  String shopName = "";
  final List<OfficeList> _myList = [
    OfficeList(
      officername: 'Officer Name',
      image:
          'https://assets.entrepreneur.com/content/3x2/2000/1616083468-GettyImages-1279497558.jpg?crop=4:3',
      tap: 'View Details',
      discription: "Designation",
    ),
    OfficeList(
      officername: 'Officer Name',
      image:
          'https://assets.entrepreneur.com/content/3x2/2000/1616083468-GettyImages-1279497558.jpg?crop=4:3',
      tap: 'View Details',
      discription: "Designation",
    ),
    OfficeList(
      officername: 'Officer Name',
      image:
          'https://assets.entrepreneur.com/content/3x2/2000/1616083468-GettyImages-1279497558.jpg?crop=4:3',
      tap: 'View Details',
      discription: "Designation",
    ),
    OfficeList(
      officername: 'Officer Name',
      image:
          'https://assets.entrepreneur.com/content/3x2/2000/1616083468-GettyImages-1279497558.jpg?crop=4:3',
      tap: 'View Details',
      discription: "Designation",
    ),
    OfficeList(
      officername: 'Officer Name',
      image:
          'https://assets.entrepreneur.com/content/3x2/2000/1616083468-GettyImages-1279497558.jpg?crop=4:3',
      tap: 'View Details',
      discription: "Designation",
    ),
    OfficeList(
      officername: 'Officer Name',
      image:
          'https://assets.entrepreneur.com/content/3x2/2000/1616083468-GettyImages-1279497558.jpg?crop=4:3',
      tap: 'View Details',
      discription: "Designation",
    ),
  ];

  List<OfficeList> get myList {
    return [..._myList];
  }
}
