import 'dart:async';

import 'package:barmalda/butilka_model.dart';
import 'package:barmalda/ekri/gla_ekr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ZalBar extends StatefulWidget {
  final int typeBar;
  const ZalBar({required this.typeBar, super.key});
  bool eqBut0(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];
bool eqBut1(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];
bool eqBut2(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];
bool eqBut3(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];
bool eqBut4(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];
bool eqBut5(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];
bool eqBut6(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];
bool eqBut7(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];
bool eqBut8(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];
bool eqBut9(
    ButilkaModel other,
    ButilkaModel other1,
  ) =>
      other.butType == other1.butType &&
      other.butCol[0] == other1.butCol[0] &&
      other.butCol[1] == other1.butCol[1] &&
      other.butCol[2] == other1.butCol[2];


  @override
  State<ZalBar> createState() => _ZalBarState();
}

class _ZalBarState extends State<ZalBar> {
  late WebViewController barCon;
  RxDouble rotatorFon = 0.0.obs;
  bool isUpRotator = true;

  @override
  void initState() {
    barCon = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Color.fromRGBO(13, 11, 126, 1))
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(
        widget.typeBar == 0
            ? 'https://sites.google.com/view/luna-eai-sia/support'
            : widget.typeBar == 1
                ? 'https://www.termsfeed.com/live/16aa9929-9580-471a-95a3-ce2d9b4faddc'
                : 'https://www.termsfeed.com/live/af7185f9-9687-44a7-9ac4-0ae466666801',
      ));
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Timer.periodic(Duration(milliseconds: 50), (timer) {
        if (isUpRotator) {
          rotatorFon.value += 0.015;
          if (rotatorFon.value >= 1) {
            isUpRotator = false;
          }
        } else {
          rotatorFon.value -= 0.015;
          if (rotatorFon.value <= 0) {
            isUpRotator = true;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color.fromRGBO(6, 5, 52, 1), Color.fromRGBO(0, 9, 85, 1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Obx(
            () => CustomPaint(
              painter: Fonari(
                animatorFonarei: rotatorFon.value,
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: Get.back,
                            child: Image.asset(
                              'assets/nazBar.png',
                              filterQuality: FilterQuality.high,
                              width: 39,
                              height: 39,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              widget.typeBar == 0
                                  ? 'suPport'.toUpperCase()
                                  : widget.typeBar == 1
                                      ? 'teRms of use'.toUpperCase()
                                      : 'privacY policy'.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 39,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: WebViewWidget(
                            controller: barCon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
