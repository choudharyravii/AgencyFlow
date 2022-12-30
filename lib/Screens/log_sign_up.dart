import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/material.dart';
import 'SignUp_Screen.dart';
import 'login_Screen.dart';

// ignore: camel_case_types
class LogSignUp extends StatefulWidget {
  const LogSignUp({super.key});

  @override
  State<LogSignUp> createState() => _LogSignUpState();
}

// ignore: camel_case_types
class _LogSignUpState extends State<LogSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Common.gradiantliner(
        Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.only(
            top: Common.displayHeight(context) * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/Images/logo.png'),
              SizedBox(
                height: Common.displayHeight(context) * 0.07,
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Common.displayHeight(context) * 0.1,
                        ),
                        child: TabBar(
                          labelPadding: EdgeInsets.only(
                            bottom: Common.displayHeight(context) * 0.01,
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.white,
                          unselectedLabelColor: Colors.white,
                          onTap: (val) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          // ignore: prefer_const_literals_to_create_immutables
                          tabs: [
                            Text(
                              Constants.logInC,
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 18),
                            ),
                            // style: Theme.of(context).textTheme.headline1),
                            Text(
                              Constants.signUpC,
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 18),
                              // Theme.of(context).textTheme.headline1)
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            Login_Screen(),
                            SignUp_Screen(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
