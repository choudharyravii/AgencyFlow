import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';

class AddNotesSCreen extends StatefulWidget {
  const AddNotesSCreen({super.key});

  @override
  State<AddNotesSCreen> createState() => _AddNotesSCreenState();
}

class _AddNotesSCreenState extends State<AddNotesSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            title: Text(
              "Add Notes",
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
                width: Common.displayWidth(context) * 0.9,
                // height: Common.displayHeight(context) * 0.4,
                child: TextFormField(
                  cursorHeight: 40,
                  maxLines: 14,
                  autofocus: false,
                  onTap: () {},
                  style: TextStyle(color: AppColors.black),
                  // controller: Controller,
                  decoration: InputDecoration(
                    fillColor: AppColors.bggray,
                    filled: true,
                    // enabledBorder: ,

                    hintText: Constants.TypePost,
                    // hintStyle: ,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.04,
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.18,
              ),
              Common.customElevatedButton2(
                context,
                Constants.ssubmit,
                () {
                  Navigator.pushNamed(context, '/PersonalNotesListScreen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
