import 'package:agencyflow/Provider/message.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              // ignore: prefer_const_literals_to_create_immutables
              actions: [
                //
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/StartChatScreen");
                      },
                      child: Icon(Icons.message)),
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
        body: Consumer<messageusers>(builder: (context, items, child) {
          return ListView.builder(
            itemCount: items.myList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/InsideChatScreen");
                },
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 24,
                      backgroundColor: AppColors.iconColor,
                      child: ClipOval(
                          child: Image.network(items.myList[index].image))),
                  title: Text(
                    items.myList[index].username,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(items.myList[index].discription),
                  trailing: Text(items.myList[index].time),
                ),
              );
            },
          );
        }));
  }
}
