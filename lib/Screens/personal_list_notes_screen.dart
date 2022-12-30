import 'package:agencyflow/Provider/document_list.dart';
import 'package:agencyflow/Provider/personal_notes_list.dart';
import 'package:agencyflow/Screens/home_respective_docs.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/rendering/box.dart';

class PersonalNotesListScreen extends StatefulWidget {
  const PersonalNotesListScreen({super.key});

  @override
  State<PersonalNotesListScreen> createState() =>
      _PersonalNotesListScreenState();
}

class _PersonalNotesListScreenState extends State<PersonalNotesListScreen> {
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
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/AddNotesSCreen");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(Icons.add),
                  ),
                ),
              ],
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
                Container(
                  width: Common.displayWidth(context) * 0.94,
                  child: searchTextField(),
                ),
                SizedBox(
                  height: Common.displayHeight(context) * 0.02,
                ),
                Consumer<PersonalNotesLists>(builder: (context, items, child) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: items.myList.length,
                      // itemCount: items.myList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, "/PersonalNotesScreen");
                          },
                          child: Center(
                            child: SizedBox(
                              width: Common.displayWidth(context) * 0.92,
                              child: ListTile(
                                leading: Image.asset(items.myList[index].image),
                                minLeadingWidth: 10,
                                title: Text(
                                  items.myList[index].username,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                // subtitle: Text(items.myList[index].discription),
                                // trailing: Text(items.myList[index].name),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }),
              ],
            )));
  }
}
