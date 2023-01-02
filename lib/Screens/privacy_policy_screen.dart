import 'package:agencyflow/Utilis/appcolor.dart';
import 'package:agencyflow/Utilis/common.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            title: Text(
              "Privacy Policy",
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
                height: Common.displayHeight(context) * 0.7,
                child: WebViewWidget(controller: controller),
              ),
            ),
          ],
        ),
      ),
    );
  }

  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://flutter.dev'));
}
