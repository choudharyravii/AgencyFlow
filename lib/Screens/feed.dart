import 'package:agencyflow/Model/feed_model.dart';
import 'package:agencyflow/Provider/feed.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            actions: [
              //
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/NewPostScreen");
                    },
                    child: Icon(Icons.add)),
              )
            ],
            leading: const SizedBox(),
            title: const Image(
              image: AssetImage("assets/Images/logo.png"),
              height: 35,
              fit: BoxFit.contain,
            ),
            flexibleSpace: Container(
              decoration: Common.commonAppBarDecoration(),
            ),
            elevation: 0,
            centerTitle: true,
          )),
      body: Consumer<Feedusers>(builder: (context, snap, child) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: Common.displayWidth(context) * 0.14,
                              height: Common.displayHeight(context) * 0.06,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        snap.myList[index].image,
                                      ),
                                      scale: 4))),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.08,
                          ),
                          Container(
                            child: Text(
                              snap.myList[index].username,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: Common.displayWidth(context) * 0.10,
                          ),
                          Container(
                            child: Text(
                              snap.myList[index].time,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.02,
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        width: Common.displayWidth(context) * 0.8,
                        height: Common.displayHeight(context) * 0.1,
                        child: Center(
                          child: Text(
                            snap.myList[index].discription,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: Common.displayHeight(context) * 0.002,
                    color: AppColors.grey10,
                  ),
                  SizedBox(
                    height: Common.displayHeight(context) * 0.03,
                  )
                ],
              );
            });
      }),
    );
  }
}
