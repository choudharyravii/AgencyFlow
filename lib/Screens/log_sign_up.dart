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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          body: Common.gradiantliner(
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Common.displayHeight(context) * 0.07,
              ),
              Image.asset('assets/Images/logo.png'),
              SizedBox(
                height: Common.displayHeight(context) * 0.07,
              ),
              Container(
                height: Common.displayHeight(context) * 0.65,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Common.displayHeight(context) * 0.11,
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
                      const Expanded(
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
      )),
    );
  }
}
