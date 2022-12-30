import 'package:agencyflow/Provider/document_list.dart';
import 'package:agencyflow/Provider/laws_list.dart';
import 'package:agencyflow/Screens/home_respective_docs.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/rendering/box.dart';

class LawsListScreen extends StatefulWidget {
  const LawsListScreen({super.key});

  @override
  State<LawsListScreen> createState() => _LawsListScreenState();
}

class _LawsListScreenState extends State<LawsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              title: Text(
                "Document",
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
                Container(
                  width: Common.displayWidth(context) * 0.94,
                  child: searchTextField(),
                ),
                SizedBox(
                  height: Common.displayHeight(context) * 0.02,
                ),
                Consumer<LawsLists>(builder: (context, items, child) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: items.myList.length,
                      // itemCount: items.myList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/DocumentListScreen");
                          },
                          child: ListTile(
                              leading: Image.asset(items.myList[index].image),
                              title: Text(
                                items.myList[index].filename,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              // subtitle: Text(items.myList[index].discription),
                              // trailing: Text(items.myList[index].name),
                              trailing: Container(
                                height: 20,
                                width: 65,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        items.myList[index].tralimage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Center(
                                    child: Text(
                                  items.myList[index].name,
                                  style: TextStyle(color: AppColors.white),
                                )),
                              )),
                        );
                      },
                    ),
                  );
                }),
                SizedBox(),
              ],
            )));
  }
}
