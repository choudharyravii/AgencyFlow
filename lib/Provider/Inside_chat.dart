import 'package:agencyflow/Model/chat_model.dart';
import 'package:agencyflow/Model/feed_model.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InsideChats extends ChangeNotifier {
  // ignore: prefer_final_fields
  // String name = "Ravi";

  // final Product _product = Product();
  String shopName = "";
  final List<InsideChat> _myList = [
    InsideChat(
      color: AppColors.darkblue,
      filename: "Hey There!",
      reschat: true,
    ),
    InsideChat(
      color: AppColors.chatdark,
      filename: "How Are You!",
      reschat: false,
    ),
    InsideChat(
      color: AppColors.darkblue,
      filename: "What going On",
      reschat: true,
    ),
    InsideChat(
      color: AppColors.darkblue,
      filename: "Your App Is Ok",
      reschat: true,
    ),
    InsideChat(
      color: AppColors.chatdark,
      filename: "Ya All Good Now :)",
      reschat: false,
    ),
    InsideChat(
      color: AppColors.chatdark,
      filename: "Ok I Talk You later",
      reschat: false,
    ),
    InsideChat(
      color: AppColors.chatdark,
      filename: "Thank You",
      reschat: false,
    ),
  ];

  List<InsideChat> get myList {
    return [..._myList];
  }
}
