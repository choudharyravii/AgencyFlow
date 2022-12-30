import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class HomeRespectiveDocs extends StatefulWidget {
  const HomeRespectiveDocs({super.key});

  @override
  State<HomeRespectiveDocs> createState() => _HomeRespectiveDocsState();
}

class _HomeRespectiveDocsState extends State<HomeRespectiveDocs> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            leading: SizedBox(),
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
      body: Container(
        margin: EdgeInsets.only(top: Common.displayHeight(context) * 0.03),
        width: Common.displayWidth(context),
        height: Common.displayHeight(context),
        child: SingleChildScrollView(
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
              Image.asset(
                "assets/Images/mic.png",
                scale: 1.5,
              ),
              Text(
                "Hi Mess How are you . now what i do ",
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.iconColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Cards(
                    "assets/Images/document2.png",
                    "Documents",
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.05,
                  ),
                  Cards("assets/Images/laws.png", "Laws"),
                ],
              ),
              SizedBox(
                height: Common.displayHeight(context) * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Cards(
                    "assets/Images/personalnotes.png",
                    "Personal Notes",
                  ),
                  SizedBox(
                    width: Common.displayWidth(context) * 0.05,
                  ),
                  Cards("assets/Images/rights.png", "Rights"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String images;
  final String text;
  Cards(
    this.images,
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: Common.displayHeight(context) * 0.25,
        width: Common.displayWidth(context) * 0.40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset(images), Text(text)],
        ),
      ),
    );
  }
}

searchTextField() {
  return Card(
    elevation: 5,
    child: TextFormField(
      maxLength: 30,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.done,
      // inputFormatters: [
      //   // FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]')),
      //   // FilteringTextInputFormatter.deny(RegExp(
      //   //   r"^[\\{},@#'-]*$",
      //   // )),
      // ],
      // controller: searchController,
      cursorColor: AppColors.grey2,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: AppColors.grey2, fontSize: 13, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        counterText: '',
        fillColor: AppColors.white,
        prefixIcon: Icon(
          Icons.search_rounded,
          color: AppColors.black,
        ),
        filled: true,
        contentPadding: const EdgeInsets.only(top: 10, left: 10),
        focusColor: AppColors.white,
        suffix: GestureDetector(
          onTap: () async {},
          child: Icon(
            Icons.close_rounded,
            color: AppColors.iconColor,
            size: 20,
          ),
        ),
        hintText: "Search",
        hintStyle: TextStyle(
            color: AppColors.grey2, fontSize: 13, fontWeight: FontWeight.w600),
        border: Common.outlineBorder,
        focusedErrorBorder: Common.outlineBorder,
        disabledBorder: Common.outlineBorder,
        enabledBorder: Common.outlineBorder,
        errorBorder: Common.outlineBorder,
        focusedBorder: Common.outlineBorder,
      ),
    ),
  );
}
