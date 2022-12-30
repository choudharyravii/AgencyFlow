import 'package:agencyflow/Provider/message.dart';
import 'package:agencyflow/Provider/office_managment.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PoliceManagmentScreen extends StatefulWidget {
  const PoliceManagmentScreen({super.key});

  @override
  State<PoliceManagmentScreen> createState() => _PoliceManagmentScreenState();
}

class _PoliceManagmentScreenState extends State<PoliceManagmentScreen> {
  bool changestate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              title: Text(
                changestate
                    ? Constants.policemanagement
                    : Constants.OfficerManagement,
                style: TextStyle(fontSize: 20),
              ),
              flexibleSpace: Container(
                decoration: Common.commonAppBarDecoration(),
              ),
              elevation: 0,
              centerTitle: true,
            )),
        body: Column(
          children: [
            SizedBox(
              height: Common.displayHeight(context) * 0.03,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Common.customsmallbutton3(context, "Officer Request", () {
                  setState(() {
                    changestate = !changestate;
                  });
                },
                    changestate ? AppColors.white : AppColors.darkblue,
                    changestate ? AppColors.darkblue : AppColors.white,
                    10,
                    0,
                    0,
                    10),
                Common.customsmallbutton3(context, "Officer List", () {
                  setState(() {
                    changestate = !changestate;
                  });
                },
                    changestate ? AppColors.darkblue : AppColors.white,
                    changestate ? AppColors.white : AppColors.darkblue,
                    0,
                    10,
                    10,
                    0),
              ],
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.02,
            ),
            Expanded(
              child: Consumer<OfficeLists>(builder: (context, items, child) {
                return ListView.builder(
                  itemCount: items.myList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, "/InsideChatScreen");
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                                radius: 24,
                                backgroundColor: AppColors.iconColor,
                                child: ClipOval(
                                  child:Image(image: NetworkImage(items.myList[index].image)),)),
                                    // child: Image.network(
                                    //     items.myList[index].image))),
                            title: Text(
                              items.myList[index].officername,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: changestate
                                ? Text(items.myList[index].discription)
                                : InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, "/OfficerRequestScreen");
                                    },
                                    child: Text(
                                      items.myList[index].tap,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                            trailing: SizedBox(
                              width: changestate
                                  ? Common.displayWidth(context) * 0.28
                                  : Common.displayWidth(context) * 0.22,
                              child: Row(
                                children: [
                                  changestate
                                      ? SizedBox()
                                      : Image.asset(
                                          "assets/Images/cancel.png",
                                          scale: 1.3,
                                        ),
                                  SizedBox(
                                    width: Common.displayWidth(context) * 0.04,
                                  ),
                                  changestate
                                      ? InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(context,
                                                "/OfficerRequestScreenNew");
                                          },
                                          child: Text(
                                            items.myList[index].tap,
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        )
                                      : Image.asset("assets/Images/check.png",
                                          scale: 1.3),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: Common.displayHeight(context) * 0.002,
                          color: AppColors.grey10,
                        ),
                      ],
                    );
                  },
                );
              }),
            ),
          ],
        ));
  }
}
