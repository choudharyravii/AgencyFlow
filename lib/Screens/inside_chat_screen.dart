import 'package:agencyflow/Provider/Inside_chat.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InsideChatScreen extends StatefulWidget {
  const InsideChatScreen({super.key});

  @override
  State<InsideChatScreen> createState() => _InsideChatScreenState();
}

class _InsideChatScreenState extends State<InsideChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              title: Row(
                children: [
                  Container(
                      width: Common.displayWidth(context) * 0.11,
                      height: Common.displayHeight(context) * 0.5,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(
                              "https://avatoon.me/wp-content/uploads/2021/09/Cartoon-Pic-Ideas-for-DP-Profile11.png",
                            ),
                          ))),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.04,
                  ),
                  Text(
                    "Personal Name",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              // actions: [
              //   InkWell(
              //     onTap: () {
              //       Navigator.pushNamed(context, "/AddNotesSCreen");
              //     },
              //     child: const Padding(
              //       padding: EdgeInsets.only(right: 15.0),
              //       child: Icon(Icons.add),
              //     ),
              //   ),
              // ],
              flexibleSpace: Container(
                decoration: Common.commonAppBarDecoration(),
              ),
              elevation: 0,
            )),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child:
                      Consumer<InsideChats>(builder: (context, items, child) {
                    return ListView.builder(
                      itemCount: items.myList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: items.myList[index].reschat
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: Common.displayHeight(context) * 0.05,
                            ),
                            Container(
                              width: Common.displayWidth(context) * 0.35,
                              height: Common.displayHeight(context) * 0.05,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: items.myList[index].color),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  items.myList[index].filename,
                                  style: TextStyle(
                                      color: AppColors.white, fontSize: 12),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 100),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  "7:02 PM",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    );
                  })),
            ),
            Container(
              height: Common.displayHeight(context) * 0.1,
              width: Common.displayWidth(context) * 1,
              color: AppColors.bggray,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: AppColors.black,
                      size: 28,
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.04,
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.65,
                      height: Common.displayHeight(context) * 0.05,
                      child: TextFormField(
                        cursorHeight: 10,
                        autofocus: false,
                        onTap: () {},
                        style: TextStyle(color: AppColors.black),
                        // controller: Controller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Type message here..",
                          hintStyle: TextStyle(fontSize: 10),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Common.displayWidth(context) * 0.04,
                    ),
                    Icon(
                      Icons.share_rounded,
                      color: AppColors.black,
                      size: 28,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
