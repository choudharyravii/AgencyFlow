import 'package:agencyflow/Provider/document_list.dart';
import 'package:agencyflow/Provider/personal_notes_list.dart';
import 'package:agencyflow/Screens/home_respective_docs.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/rendering/box.dart';

class PersonalNotesScreen extends StatefulWidget {
  const PersonalNotesScreen({super.key});

  @override
  State<PersonalNotesScreen> createState() => _PersonalNotesScreenState();
}

class _PersonalNotesScreenState extends State<PersonalNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              title: Text(
                "Personal Notes",
                style: TextStyle(fontSize: 20),
              ),
              flexibleSpace: Container(
                decoration: Common.commonAppBarDecoration(),
              ),
              elevation: 0,
              centerTitle: true,
            )),
        body: Container(
            margin: EdgeInsets.only(top: Common.displayHeight(context) * 0.03),
            width: Common.displayWidth(context),
            height: Common.displayHeight(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<PersonalNotesLists>(builder: (context, items, child) {
                  return Expanded(
                    child: Container(
                      width: Common.displayWidth(context) * 0.9,
                      child: ListView.builder(
                        itemCount: 1,
                        // itemCount: items.myList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: Image.asset(items.myList[index].image),
                                minLeadingWidth: 10,
                                title: Text(
                                  items.myList[index].username,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                // subtitle: Text(items.myList[index].discription),
                                // trailing: Text(items.myList[index].name),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 13.0, right: 8.0),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata.",
                                  style: TextStyle(
                                      color: AppColors.grey4,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  );
                }),
                SizedBox(),
              ],
            )));
  }
}
