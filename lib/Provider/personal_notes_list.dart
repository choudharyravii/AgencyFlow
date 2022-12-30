import 'package:agencyflow/Model/document_list_model.dart';
import 'package:agencyflow/Model/feed_model.dart';
import 'package:agencyflow/Model/personal_notes_list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalNotesLists extends ChangeNotifier {
  // ignore: prefer_final_fields
  // String name = "Ravi";

  // final Product _product = Product();
  String shopName = "";
  final List<PersonalNotesList> _myList = [
    PersonalNotesList(
      username: 'Aida Bugg notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Teri Dactyl notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Peg Legge notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Aida Bugg notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Teri Dactyl notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Peg Legge notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Teri Dactyl notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Peg Legge notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Aida Bugg notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Teri Dactyl notes',
      image: 'assets/Images/notesdocument.png',
    ),
    PersonalNotesList(
      username: 'Peg Legge notes',
      image: 'assets/Images/notesdocument.png',
    ),
  ];

  List<PersonalNotesList> get myList {
    return [..._myList];
  }
}
