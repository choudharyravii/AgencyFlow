import 'package:agencyflow/Provider/message.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OfficerRequestScreenNew extends StatefulWidget {
  const OfficerRequestScreenNew({super.key});

  @override
  State<OfficerRequestScreenNew> createState() =>
      _OfficerRequestScreenNewState();
}

class _OfficerRequestScreenNewState extends State<OfficerRequestScreenNew> {
  bool notificationValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: AppBar(
              title: const Text(
                Constants.OfficerManagement,
                style: TextStyle(fontSize: 20),
              ),
              flexibleSpace: Container(
                decoration: Common.commonAppBarDecoration(),
              ),
              elevation: 0,
              // centerTitle: true,
            )),
        body: Consumer<messageusers>(builder: (context, items, child) {
          return SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(
                  left: 28.0,
                  top: 20,
                  right: 28.0,
                ),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: Common.displayWidth(context) * 0.23,
                              height: Common.displayHeight(context) * 0.12,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        "https://assets.entrepreneur.com/content/3x2/2000/1616083468-GettyImages-1279497558.jpg?crop=4:3",
                                      ),
                                      scale: 4))),
                          Container(
                            margin: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height: Common.displayHeight(context) * 0.04,
                                  child: const Text(
                                    "Allie Grater",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  "Designation",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Police Id: 525 112",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.03,
                      ),
                      const Text(
                        "Contact Details",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.01,
                      ),
                      Container(
                        height: Common.displayHeight(context) * 0.12,
                        width: Common.displayWidth(context),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors
                                  .grey3, //                   <--- border color
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              Constants.pnumber,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              Constants.enumber,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.03,
                      ),
                      const Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.01,
                      ),
                      Container(
                        height: Common.displayHeight(context) * 0.12,
                        width: Common.displayWidth(context),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors
                                  .grey3, //                   <--- border color
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Text(
                          Constants.address,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.03,
                      ),
                      const Text(
                        "Certificate",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.01,
                      ),
                      Container(
                        height: Common.displayHeight(context) * 0.12,
                        width: Common.displayWidth(context),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors
                                  .grey3, //                   <--- border color
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.photo_library_outlined,
                              size: 32,
                            ),
                            Text(
                              "Certificate Name",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Common.customsmallbutton2(context, "View", () {},
                                AppColors.darkblue, AppColors.white),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Common.displayHeight(context) * 0.04,
                      ),
                      Common.customElevatedButton4(
                          context, "Remove Officer", () {}, AppColors.darkblue)
                    ])),
          );
        }));
  }
}
