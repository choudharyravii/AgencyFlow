import 'package:agencyflow/Provider/Inside_chat.dart';
import 'package:agencyflow/Provider/document_list.dart';
import 'package:agencyflow/Provider/feed.dart';
import 'package:agencyflow/Provider/laws_list.dart';
import 'package:agencyflow/Provider/message.dart';
import 'package:agencyflow/Provider/office_managment.dart';
import 'package:agencyflow/Provider/personal_notes_list.dart';
import 'package:agencyflow/Screens/2_step_verification.dart';
import 'package:agencyflow/Screens/Officer_Request_Screen_New.dart';
import 'package:agencyflow/Screens/aboutus_screen.dart';
import 'package:agencyflow/Screens/add_notes_screen.dart';
import 'package:agencyflow/Screens/agency_unverified.dart';
import 'package:agencyflow/Screens/agency_verification.dart';
import 'package:agencyflow/Screens/agency_verified.dart';
import 'package:agencyflow/Screens/change_password.dart';
import 'package:agencyflow/Screens/change_password_screen.dart';
import 'package:agencyflow/Screens/createprofile.dart';
import 'package:agencyflow/Screens/document_list_screen.dart';
import 'package:agencyflow/Screens/document_screen.dart';
import 'package:agencyflow/Screens/edit_profile_screen.dart';
import 'package:agencyflow/Screens/home_respective_docs.dart';
import 'package:agencyflow/Screens/inside_chat_screen.dart';
import 'package:agencyflow/Screens/laws_list_screen.dart';
import 'package:agencyflow/Screens/main_screen.dart';
import 'package:agencyflow/Screens/forgot_password.dart';
import 'package:agencyflow/Screens/log_sign_up.dart';
import 'package:agencyflow/Screens/new_post_screen.dart';
import 'package:agencyflow/Screens/officer_managment_screen.dart';
import 'package:agencyflow/Screens/officer_request_details_screen.dart';
import 'package:agencyflow/Screens/personal_list_notes_screen.dart';
import 'package:agencyflow/Screens/personal_notes_screen.dart';
import 'package:agencyflow/Screens/privacy_policy_screen.dart';
import 'package:agencyflow/Screens/right_list_screen.dart';
import 'package:agencyflow/Screens/splash_screen.dart';
import 'package:agencyflow/Screens/start_chat_screen.dart';
import 'package:agencyflow/Screens/term_condition_screen.dart';
import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: Feedusers()),
          ChangeNotifierProvider.value(value: messageusers()),
          ChangeNotifierProvider.value(value: DocumentLists()),
          ChangeNotifierProvider.value(value: DocumentLists2()),
          ChangeNotifierProvider.value(value: LawsLists()),
          ChangeNotifierProvider.value(value: PersonalNotesLists()),
          ChangeNotifierProvider.value(value: InsideChats()),
          ChangeNotifierProvider.value(value: OfficeLists()),
        ],
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.focusedChild?.unfocus();
            }
            // new TextEditingController().clear();
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: 'Rubik',
              textTheme: TextTheme(
                headline1: TextStyle(
                    fontSize: 17, fontFamily: 'Futura', color: AppColors.white),
                headline2: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    color: AppColors.hintText),
                headline3: TextStyle(
                    fontSize: 21,
                    fontFamily: 'Proxima Nova Black',
                    color: AppColors.buttonText,
                    fontWeight: FontWeight.bold),
                headline4: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Montserrat',
                    color: AppColors.textfieldText),
                headline5: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Proxima Nova Black',
                    color: AppColors.white,
                    fontWeight: FontWeight.bold),
                headline6: TextStyle(
                    fontSize: 29,
                    fontFamily: 'Gibson',
                    color: AppColors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const SplashScreen(),
              '/loginsignup': (context) => const LogSignUp(),
              '/Verfication': (context) => const Verfication(),
              '/ForgotPassword': (context) => const ForgotPassword(),
              '/ChangePassword': (context) => const ChangePassword(),
              // when we forgot password
              '/ChangePasswordScreen': (context) =>
                  const ChangePasswordScreen(),
              // when we change password for security
              '/ChnageProfile': (context) => const ChnageProfile(),
              '/AgencyVerification': (context) => const AgencyVerification(),
              '/AgencyUnverified': (context) => const AgencyUnverified(),
              '/Agencyverified': (context) => const Agencyverified(),
              '/MainScreen': (context) => const MainScreen(),
              '/NewPostScreen': (context) => const NewPostScreen(),
              '/EditProfileScreen': (context) => const EditProfileScreen(),
              '/HomeRespectiveDocs': (context) => const HomeRespectiveDocs(),
              '/DocumentScreen': (context) => const DocumentScreen(),
              '/DocumentListScreen': (context) => const DocumentListScreen(),
              '/LawsListScreen': (context) => const LawsListScreen(),
              '/PersonalNotesListScreen': (context) =>
                  const PersonalNotesListScreen(),
              '/PersonalNotesScreen': (context) => const PersonalNotesScreen(),
              '/AddNotesSCreen': (context) => const AddNotesSCreen(),
              '/RightListScreen': (context) => const RightListScreen(),
              '/AboutUsScreen': (context) => const AboutUsScreen(),
              '/TermConditionScreen': (context) => const TermConditionScreen(),
              '/PrivacyPolicyScreen': (context) => const PrivacyPolicyScreen(),
              '/InsideChatScreen': (context) => const InsideChatScreen(),
              '/StartChatScreen': (context) => const StartChatScreen(),
              '/PoliceManagmentScreen': (context) =>
                  const PoliceManagmentScreen(),
              '/OfficerRequestScreen': (context) =>
                  const OfficerRequestScreen(),
              '/OfficerRequestScreenNew': (context) =>
                  const OfficerRequestScreenNew(),
            },
            // home: const SplashScreen(),
          ),
        ));
  }
}
