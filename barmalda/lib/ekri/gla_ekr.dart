import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:barmalda/butilka_model.dart';
import 'package:barmalda/dicso_co.dart';
import 'package:barmalda/disco.dart';
import 'package:barmalda/ekri/period_ekr.dart';
import 'package:barmalda/ekri/rec_ekr.dart';
import 'package:barmalda/komorka.dart';
import 'package:barmalda/zal_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GlaErk extends StatefulWidget {
  final ButilkaModel? bultilka1;
  final ButilkaModel? bultilka2;
  final ButilkaModel? bultilka3;
  final ButilkaModel? bultilka4;
  final ButilkaModel? bultilka5;
  final ButilkaModel? bultilka6;
  const GlaErk({super.key, this.bultilka1, this.bultilka2, this.bultilka3, this.bultilka4, this.bultilka5, this.bultilka6});

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
  State<GlaErk> createState() => _GlaErkState();
}

class _GlaErkState extends State<GlaErk> {
  void _bubasus() {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: IntrinsicHeight(
          child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 43),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 25,
                          top: 37,
                          right: 25,
                          bottom: 41,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/mask_fon.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(13, 11, 126, 1),
                              Color.fromRGBO(2, 0, 95, 1)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IntrinsicHeight(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'ABOUT US',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => ZalBar(
                                        typeBar: 2,
                                      ));
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  constraints: BoxConstraints(minHeight: 45),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(119, 80, 174, 1),
                                          Color.fromRGBO(50, 69, 181, 1)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(8)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'privacy policy'.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => ZalBar(
                                        typeBar: 1,
                                      ));
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  constraints: BoxConstraints(minHeight: 45),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(119, 80, 174, 1),
                                          Color.fromRGBO(50, 69, 181, 1)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(8)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'terms of use'.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => ZalBar(
                                        typeBar: 0,
                                      ));
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  constraints: BoxConstraints(minHeight: 45),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(119, 80, 174, 1),
                                          Color.fromRGBO(50, 69, 181, 1)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(8)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'support'.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: -11,
                        top: -14,
                        child: GestureDetector(
                          onTap: Get.back,
                          child: Image.asset(
                            'assets/clop.png',
                            filterQuality: FilterQuality.high,
                            height: 39,
                            width: 39,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _pepmemum() {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: IntrinsicHeight(
          child: Material(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 16,
                          top: 28,
                          right: 16,
                          bottom: 41,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/mask_fon.png'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(13, 11, 126, 1),
                              Color.fromRGBO(2, 0, 95, 1)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IntrinsicHeight(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'no '.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontFamily: 'TitanOne',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        )),
                                    TextSpan(
                                        text: 'ads'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontFamily: 'TitanOne',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.blue,
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: '240 sec '.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontFamily: 'TitanOne',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.yellow,
                                        )),
                                    TextSpan(
                                        text: 'more'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontFamily: 'TitanOne',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              if (!(Komorka.komorka!.getBool('baPr') ?? false))
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: double.infinity,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 12),
                                        constraints:
                                            BoxConstraints(minHeight: 45),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromRGBO(119, 80, 174, 1),
                                                Color.fromRGBO(50, 69, 181, 1)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Buy Premium for 0.99\$'
                                              .toUpperCase(),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: double.infinity,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 12),
                                        constraints:
                                            BoxConstraints(minHeight: 45),
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromRGBO(119, 80, 174, 1),
                                                Color.fromRGBO(50, 69, 181, 1)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Restore Purchase'.toUpperCase(),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              else
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  constraints: BoxConstraints(minHeight: 45),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(209, 30, 144, 1),
                                          Color.fromRGBO(50, 69, 181, 1)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(8)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'PREMIUM ACTIVATED'.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: -11,
                        top: -14,
                        child: GestureDetector(
                          onTap: Get.back,
                          child: Image.asset(
                            'assets/clop.png',
                            filterQuality: FilterQuality.high,
                            height: 39,
                            width: 39,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isUpRotator = true;
  RxBool mup = (Komorka.komorka!.getBool('mup') ?? true).obs;
  late Timer rotator;
  RxDouble rotatorTur = 0.0.obs;
  RxDouble rotatorFon = 0.0.obs;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (mup.value) {
        Disco.goBarMu('mus/disco.mp3');
      }
      rotator = Timer.periodic(Duration(milliseconds: 50), (timer) {
        rotatorTur.value += 0.015;
        if (rotatorTur.value >= 1) {
          rotatorTur.value -= 1;
        }
      });

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
    return Scaffold(
      body: GetBuilder<DiscoCo>(builder: (context) {
        return Container(
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
                      Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {
                            if (mup.value) {
                              rotator.cancel();
                              rotatorTur.value = 0;
                              mup.toggle();

                              Disco.stoBarMu();
                            } else {
                              rotator = Timer.periodic(
                                  Duration(milliseconds: 50), (timer) {
                                rotatorTur.value += 0.015;
                                if (rotatorTur.value >= 1) {
                                  rotatorTur.value -= 1;
                                }
                              });

                              Disco.goBarMu('mus/disco.mp3');
                              mup.toggle();
                            }
                            Komorka.komorka!.setBool('mup', mup.value);
                          },
                          child: Obx(
                            () => mup.value
                                ? Obx(
                                    () => AnimatedRotation(
                                      duration: Duration(milliseconds: 10),
                                      turns: rotatorTur.value,
                                      child: Image.asset(
                                        'assets/disk.png',
                                        height: 45,
                                      ),
                                    ),
                                  )
                                : Image.asset(
                                    'assets/cross_disk.png',
                                    height: 45,
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 31,
                      ),
                      Image.asset(
                        'assets/gla.png',
                        height: 233,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => PeriodEkr());
                            },
                            child: Container(
                              height: 52,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(244, 34, 185, 1),
                                    Color.fromRGBO(163, 23, 90, 1)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              alignment: Alignment.center,
                              constraints: BoxConstraints(minHeight: 45),
                              child: Text(
                                'Play'.toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 36,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          GestureDetector(
                            onTap: () {
                              _pepmemum();
                            },
                            child: Container(
                              height: 52,
                              width: double.infinity,
                              alignment: Alignment.center,
                              constraints: BoxConstraints(minHeight: 45),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(119, 80, 174, 1),
                                    Color.fromRGBO(50, 69, 181, 1)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: Text(
                                'Premium'.toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => RecEkr());
                            },
                            child: Container(
                              height: 52,
                              width: double.infinity,
                              alignment: Alignment.center,
                              constraints: BoxConstraints(minHeight: 45),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(119, 80, 174, 1),
                                    Color.fromRGBO(50, 69, 181, 1)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: Text(
                                'Record table'.toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: _bubasus,
                            child: Container(
                              height: 52,
                              width: double.infinity,
                              alignment: Alignment.center,
                              constraints: BoxConstraints(minHeight: 45),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(119, 80, 174, 1),
                                    Color.fromRGBO(50, 69, 181, 1)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: Text(
                                'About Us'.toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class BubabusWi extends StatelessWidget {
  const BubabusWi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        top: 12,
        right: 16,
        bottom: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  color: Colors.transparent,
                ),
                Text(
                  'ABOUT US',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: Get.back,
                  child: Container(
                    height: 48,
                    width: 48,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 4),
                constraints: BoxConstraints(minHeight: 60),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                alignment: Alignment.center,
                child: Text(
                  'privacy policy'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 4),
                constraints: BoxConstraints(minHeight: 60),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                alignment: Alignment.center,
                child: Text(
                  'terms of use'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 4),
                constraints: BoxConstraints(minHeight: 60),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                alignment: Alignment.center,
                child: Text(
                  'support'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Fonari extends CustomPainter {
  final double animatorFonarei;

  const Fonari({super.repaint, required this.animatorFonarei});

  @override
  void paint(Canvas canvas, Size size) {
    drawFonar(
      canvas,
      size,
      pi / 2 + pi / 16,
      (-pi / 16 - pi / 8) * animatorFonarei,
      Offset(size.width / 3, -80),
      [
        Color.fromRGBO(197, 239, 26, 0),
        Color.fromRGBO(197, 239, 26, 0.15),
        Color.fromRGBO(197, 239, 26, 0),
      ],
    );
    drawFonar(
      canvas,
      size,
      pi / 2 - pi / 8 - pi / 16,
      (pi / 16 + pi / 8) * animatorFonarei,
      Offset(size.width / 2 - 30, -80),
      [
        Color.fromRGBO(239, 26, 26, 0),
        Color.fromRGBO(239, 26, 26, 0.15),
        Color.fromRGBO(239, 26, 26, 0),
      ],
    );
    drawFonar(
      canvas,
      size,
      pi / 2 + pi / 20,
      (-pi / 20 - pi / 8) * animatorFonarei,
      Offset(size.width + 20, -80),
      [
        Color.fromRGBO(26, 98, 239, 0),
        Color.fromRGBO(26, 98, 239, 0.15),
        Color.fromRGBO(26, 98, 239, 0),
      ],
    );
  }

  void drawFonar(
    Canvas canvas,
    Size size,
    double startAng,
    double animAng,
    Offset fonarCenter,
    List<Color> colors,
  ) {
    canvas.drawArc(
      Rect.fromCenter(
          center: fonarCenter, width: 2 * size.height, height: 2 * size.height),
      startAng + animAng,
      pi / 8,
      true,
      Paint()
        ..style = PaintingStyle.fill
        ..shader = LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(
          Rect.fromCenter(
            center: fonarCenter,
            width: 2 * size.height,
            height: 2 * size.height,
          ),
        ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
