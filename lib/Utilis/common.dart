import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class Common {
  static double displayHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double displayWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static OutlineInputBorder commonOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(80),
  );

  static OutlineInputBorder commonOutlineInputBorder2 = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(15),
  );

  static customRadioButton(String title) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(color: AppColors.blue2, width: 2),
          ),
          child: Transform.scale(
            scale: 0.6,
            child: Checkbox(
              checkColor: AppColors.blue2,
              activeColor: AppColors.blue2,
              // fillColor: ,
              // fillColor: MaterialStateProperty.resolveWith(getColor),
              shape: const CircleBorder(
                side: BorderSide(),
              ),
              // side: BorderSide(width: 5),
              // value: isChecked,
              onChanged: (bool? value) {
                // setState(() {
                //   isChecked = value!;
                // });
              },
              value: true,
            ),
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        )
      ],
    );
  }

  static OutlineInputBorder outlineBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.white),
    borderRadius: const BorderRadius.all(Radius.circular(23)),
  );
  static commonAppBarDecoration() {
    BoxDecoration boxDecoration = BoxDecoration(
      gradient: LinearGradient(colors: [
        AppColors.bgliner1,
        AppColors.bgliner2,
      ], begin: Alignment.centerLeft, end: Alignment.centerRight),
    );
    return boxDecoration;
  }

  static gradiantliner(Widget child) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.bgliner1, AppColors.bgliner2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        SafeArea(
          child: child,
        ),
      ],
    );
  }

  static gradiantliner2(Widget child) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.bgliner1, AppColors.bgliner2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: child,
        ),
      ],
    );
  }

  static privterm(String text, TextDecoration underlines) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        decoration: underlines,
        fontSize: 14,
        color: Colors.white,
      ),
    );
  }

  static gradiantliner3(Widget child) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.bgliner1, AppColors.bgliner2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: child,
        ),
      ],
    );
  }

  static customElevatedButton(
      BuildContext context, String text, VoidCallback onPressed, Color color) {
    return Container(
      height: Common.displayHeight(context) * 0.08,
      width: Common.displayHeight(context) * 0.48,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline5,
        ),
        onPressed: onPressed,
      ),
    );
  }

  static customElevatedButton2(
      BuildContext context, String text, VoidCallback onPressed) {
    return Container(
      height: Common.displayHeight(context) * 0.08,
      width: Common.displayWidth(context) * 0.9,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.buttonGrey),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child:
            Text(text, style: TextStyle(color: AppColors.white, fontSize: 20)),
      ),
    );
  }

  static customElevatedButton3(
      BuildContext context, String text, VoidCallback onPressed, Color color) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: Common.displayWidth(context) * 0.050,
            fontFamily: 'Proxima Nova Black',
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  static customElevatedButton4(
      BuildContext context, String text, VoidCallback onPressed, Color color) {
    return Container(
      height: Common.displayHeight(context) * 0.08,
      width: Common.displayWidth(context) * 1,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline5,
        ),
        onPressed: onPressed,
      ),
    );
  }

  static customsmallbutton(
      BuildContext context, String text, VoidCallback onPressed, Color color) {
    return Container(
      width: Common.displayWidth(context) * 0.28,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: Common.displayWidth(context) * 0.035,
            fontFamily: Constants.fontbasic,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                7,
              ),
            ),
          ),
        ),
      ),
    );
  }

  static customsmallbutton2(BuildContext context, String text,
      VoidCallback onPressed, Color color, Color textcolor) {
    return Container(
        width: Common.displayWidth(context) * 0.24,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontWeight: FontWeight.bold,
              fontSize: Common.displayWidth(context) * 0.035,
              fontFamily: 'Proxima Nova Black',
            ),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              side: BorderSide(
                width: 1.0,
                color: AppColors.bgliner1,
              )),
        ));
  }

  static customsmallbutton3(
      BuildContext context,
      String text,
      VoidCallback onPressed,
      Color color,
      Color textcolor,
      double lt,
      double rt,
      double rb,
      double lb) {
    return Container(
        width: Common.displayWidth(context) * 0.44,
        height: Common.displayHeight(context) * 0.07,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                color: textcolor,
                fontWeight: FontWeight.bold,
                fontSize: Common.displayWidth(context) * 0.035,
                fontFamily: 'Proxima Nova Black',
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(lt),
                  bottomLeft: Radius.circular(lb),
                  topRight: Radius.circular(rt),
                  bottomRight: Radius.circular(rb),
                ),
              ),
            )));
  }

  static customsmallbutton4(
      BuildContext context,
      String text,
      VoidCallback onPressed,
      Color color,
      Color textcolor,
      double wdth,
      double hight) {
    return Container(
        width: Common.displayWidth(context) * wdth,
        height: Common.displayHeight(context) * hight,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                color: textcolor,
                fontWeight: FontWeight.bold,
                fontSize: Common.displayWidth(context) * 0.035,
                fontFamily: 'Proxima Nova Black',
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            )));
  }

  static showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  //Show loading dialog
  static showLoading(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: Dialog(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.70,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 40.0,
                        // width: 40.0,
                        child:
                            //Platform.isIOS
                            // ?
                            CupertinoActivityIndicator(
                          radius: 10,
                          color: AppColors.yellowButton,
                          animating: true,
                        )
                        // :
                        // commonLoader(context),
                        ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Please Wait...',
                        style: TextStyle(
                            color: AppColors.yellowButton, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  //Hide loading dialog
  static hideLoading(BuildContext context) {
    Navigator.of(context).pop();
  }

  static openCustomDialog(
      BuildContext context, String title, String message, VoidCallback func) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: Platform.isIOS
                  ? CupertinoAlertDialog(
                      title: Center(
                        child: Text(title,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold)),
                      ),
                      content: Text(message),
                      actions: <Widget>[
                        TextButton(
                          child: Text(
                            'Ok',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.yellowButton,
                            ),
                          ),
                          onPressed: func,
                        ),
                      ],
                    )
                  : AlertDialog(
                      title: Center(
                        child: Text(title,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold)),
                      ),
                      content: Text(message),
                      actions: <Widget>[
                        TextButton(
                          child: Text(
                            'Ok',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.yellowButton,
                            ),
                          ),
                          onPressed: func,
                        ),
                      ],
                    ),
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
        barrierDismissible: false,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return const Text("");
        });
  }

  static askToUserPopup(BuildContext context, String button1, String button2,
      bool towButtons, Widget subtitleWidget, dynamic func1, dynamic func2) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: Platform.isIOS
                  ? CupertinoAlertDialog(
                      content: subtitleWidget,
                      actions: towButtons
                          ? [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    // width: displayWidth(context) * 0.35,
                                    // height: displayHeight(context) * 0.06,
                                    child: commonBlackButton(
                                        func1, button1, context)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  // width: displayWidth(context) * 0.35,
                                  // height: displayHeight(context) * 0.06,
                                  child: commonButton(func2, button2, context),
                                ),
                              ),
                            ]
                          : [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                width: displayWidth(context) * 0.35,
                                height: displayHeight(context) * 0.06,
                                child: commonButton(func2, button2, context),
                              ),
                            ],
                    )
                  : AlertDialog(
                      // title: title==""?Text(title,
                      //   style: const TextStyle(
                      //     color: AppColors.blackButtonColor,
                      //     fontWeight: FontWeight.w700,),):const SizedBox(),
                      content: subtitleWidget,
                      actionsAlignment: MainAxisAlignment.center,
                      actions: towButtons
                          ? [
                              SizedBox(
                                  width: displayWidth(context) * 0.35,
                                  height: displayHeight(context) * 0.06,
                                  child: commonBlackButton(
                                      func1, button1, context)),
                              SizedBox(
                                  width: displayWidth(context) * 0.35,
                                  height: displayHeight(context) * 0.06,
                                  child: commonButton(func2, button2, context)),
                            ]
                          : [
                              SizedBox(
                                  width: displayWidth(context) * 0.40,
                                  height: displayHeight(context) * 0.06,
                                  child: commonButton(func2, button2, context)),
                            ],
                    ),
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
        barrierDismissible: false,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return const Text("");
        });
  }

  static askToUserPopup2(BuildContext context, String title, String message,
      VoidCallback func, VoidCallback func2) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: Platform.isIOS
                  ? CupertinoAlertDialog(
                      title: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // content: Text(message),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Cancel'),
                          onPressed: func2,
                        ),
                        const SizedBox(width: 20),
                        TextButton(
                          onPressed: func,
                          child: Text(
                            message,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Basic Sans",
                            ),
                          ),
                        ),
                      ],
                    )
                  : AlertDialog(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                      title: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            message,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w100),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.black),
                                ),
                                onPressed: func2,
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      fontSize:
                                          Common.displayWidth(context) * 0.03),
                                ),
                              ),
                              const SizedBox(width: 20),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.yellowButton),
                                ),
                                onPressed: func,
                                child: Text(
                                  'Ok',
                                  style: TextStyle(
                                      fontSize:
                                          Common.displayWidth(context) * 0.03),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                      contentPadding: const EdgeInsets.all(3.0),
                    ),
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
        barrierDismissible: false,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return const Text("");
        });
  }

  static askToUserPopup3(BuildContext context, String title, String message,
      VoidCallback func, VoidCallback func2) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: Platform.isIOS
                  ? CupertinoAlertDialog(
                      title: Column(
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            message,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      // content: Text(message),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Cancel'),
                          onPressed: func2,
                        ),
                        // SizedBox(width: 20),
                        TextButton(
                          onPressed: func,
                          child: const Text(
                            'Open App Settings',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Basic Sans",
                            ),
                          ),
                        ),
                      ],
                    )
                  : AlertDialog(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20.0,
                          ),
                        ),
                      ),
                      title: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            message,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w100),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.black),
                                ),
                                onPressed: func2,
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      fontSize:
                                          Common.displayWidth(context) * 0.03),
                                ),
                              ),
                              const SizedBox(width: 20),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.yellowButton),
                                ),
                                onPressed: func,
                                child: Text(
                                  'Ok',
                                  style: TextStyle(
                                      fontSize:
                                          Common.displayWidth(context) * 0.03),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                      contentPadding: const EdgeInsets.all(3.0),
                    ),
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
        barrierDismissible: false,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
          return const Text("");
        });
  }

  static Widget commonButton(VoidCallback func, String button, context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.yellowButton),
        ),
        onPressed: func,
        child: Text(
          button,
          style: TextStyle(fontSize: Common.displayWidth(context) * 0.03),
        ),
      ),
    );
  }

  static Widget commonBlackButton(VoidCallback func, String button, context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.yellowButton),
        ),
        onPressed: func,
        child: Text(
          button,
          style: TextStyle(fontSize: Common.displayWidth(context) * 0.03),
        ),
      ),
    );
  }

  // To remove focus
  static removeFocus(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    //hasPrimaryFocus is necessary to prevent Flutter from
    // throwing an exception when trying to un focus the node at the top of the tree
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  /// Comment
  /// Comment
  /// comment
}
