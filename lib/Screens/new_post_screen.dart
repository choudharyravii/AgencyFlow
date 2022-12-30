import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({super.key});

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            title: Text(
              "New Post",
              style: TextStyle(fontSize: 18),
            ),
            flexibleSpace: Container(
              decoration: Common.commonAppBarDecoration(),
            ),
            elevation: 0,
            centerTitle: true,
          )),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              SizedBox(
                width: Common.displayWidth(context) * 0.9,
                // height: Common.displayHeight(context) * 0.4,
                child: TextFormField(
                  cursorHeight: 40,
                  maxLines: 7,
                  autofocus: false,
                  onTap: () {},
                  style: TextStyle(color: AppColors.black),
                  // controller: Controller,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,

                    hintText: Constants.TypePost,
                    // hintStyle: ,
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
                height: Common.displayHeight(context) * 0.04,
              ),
              Container(
                height: Common.displayHeight(context) * 0.3,
                width: Common.displayWidth(context) * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.bggray,
                  border: Border.all(
                    color: AppColors.blue2,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: Common.displayHeight(context) * 0.08,
                        child: Image.asset("assets/Images/photo-video.png")),
                    SizedBox(
                      height: Common.displayHeight(context) * 0.035,
                      child: Text(
                        "Upload Photo / Video",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "(Optional)",
                      style: TextStyle(color: AppColors.grey2),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.08,
              ),
              Common.customElevatedButton2(
                context,
                Constants.Post,
                () {
                  Navigator.pushNamed(context, '/MainScreen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
