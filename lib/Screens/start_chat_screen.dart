
import 'package:agencyflow/Provider/message.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartChatScreen extends StatefulWidget {
  const StartChatScreen({super.key});

  @override
  State<StartChatScreen> createState() => _StartChatScreenState();
}

class _StartChatScreenState extends State<StartChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              title: Text(
                "Start New Chat",
                style: TextStyle(fontSize: 20),
              ),
              flexibleSpace: Container(
                decoration: Common.commonAppBarDecoration(),
              ),
              elevation: 0,
              centerTitle: true,
            )),
        body: Center(
          child: Container(
              // color: Colors.amber,
              margin:
                  EdgeInsets.only(top: Common.displayHeight(context) * 0.02),
              width: Common.displayWidth(context),
              height: Common.displayHeight(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Common.displayWidth(context) * 0.88,
                    child: TextFormField(
                      cursorHeight: 20,
                      autofocus: false,
                      onTap: () {},
                      style: TextStyle(color: AppColors.black),
                      // controller: Controller,
                      decoration: InputDecoration(
                        fillColor: AppColors.bggray,
                        filled: true,
                        hintText: Constants.AgencyName,
                        hintStyle: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.bold),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 22, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.02,
                  ),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: AppColors.bggray,
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.01,
                  ),
                  Consumer<messageusers>(builder: (context, items, child) {
                    return Expanded(
                      child: Container(
                        width: Common.displayWidth(context) * 0.88,
                        child: ListView.builder(
                          itemCount: items.myList.length,
                          // itemCount: items.myList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/DocumentListScreen");
                                },
                                child: ListTile(
                                  leading: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: AppColors.iconColor,
                                      child: ClipOval(
                                          child: Image.network(
                                              items.myList[index].image))),
                                  // minLeadingWidth: 50,
                                  contentPadding:
                                      EdgeInsets.only(left: 0.0, right: 0.0),
                                  title: Text(
                                    "Persons Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19),
                                  ),
                                  // subtitle: Text(items.myList[index].discription),
                                  // trailing: Text(items.myList[index].name),
                                ));
                          },
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.02,
                  ),
                  Common.customElevatedButton2(
                    context,
                    Constants.ChatwAgency,
                    () {
                      Navigator.pushNamed(context, '/MainScreen');
                    },
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.03,
                  ),
                ],
              )),
        ));
  }
}
