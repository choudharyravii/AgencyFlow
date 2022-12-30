import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            title: Text(
              "About Us",
              style: TextStyle(fontSize: 20),
            ),
            flexibleSpace: Container(
              decoration: Common.commonAppBarDecoration(),
            ),
            elevation: 0,
            centerTitle: true,
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Common.displayHeight(context) * 0.06,
            ),
            Image(
              image: AssetImage(
                "assets/Images/logo.png",
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.06,
            ),
            Center(
              child: SizedBox(
                width: Common.displayWidth(context) * 0.9,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Bibendum est ultricies integer quis. Iaculis urna id volutpat lacus laoreet. Mauris vitae ultricies leo integer malesuada. Ac odio tempor orci dapibus ultrices in. Egestas diam in arcu cursus euismod. Dictum fusce ut placerat orci nulla. Tincidunt ornare massa eget egestas purus viverra accumsan in nisl. Tempor id eu nisl nunc mi ipsum faucibus. Fusce id velit ut tortor pretium. Massa ultricies mi quis hendrerit dolor magna eget. Nullam eget felis eget nunc lobortis. Faucibus ornare suspendisse sed nisi. Sagittis eu volutpat odio facilisis mauris sit amet massa. Erat velit scelerisque in dictum non consectetur a erat. Amet nulla facilisi morbi tempus iaculis urna. Egestas purus viverra accumsan in nisl. Feugiat in ante metus dictum at tempor commodo. Convallis tellus id interdum velit laoreet. Proin sagittis nisl rhoncus mattis rhoncus urna neque viverra. Viverra aliquet eget sit amet tellus cras adipiscing enim eu. Ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Dui faucibus in ornare quam. In iaculis nunc sed augue lacus viverra vitae congue. Vitae tempus quam pellentesque nec nam aliquam sem et. Ut morbi tincidunt augue interdum. Sem fringilla ut morbi tincidunt augue. Morbi enim nunc faucibus a pellentesque sit amet porttitor eget. In est ante in nibh mauris. Nam aliquam sem et tortor consequat id porta nibh. Diam quis enim lobortis scelerisque fermentum dui faucibus. Non curabitur gravida arcu ac. Magna fringilla urna porttitor rhoncus dolor. Aenean et tortor at risus viverra adipiscing. Dignissim sodales ut eu sem. Quam quisque id diam vel quam elementum pulvinar etiam non. Eleifend quam",
                  style: TextStyle(
                      color: AppColors.grey8,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: Common.displayHeight(context) * 0.06,
            ),
          ],
        ),
      ),
    );
  }
}
