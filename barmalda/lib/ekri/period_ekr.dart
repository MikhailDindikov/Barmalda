import 'dart:async';

import 'package:barmalda/butilka_model.dart';
import 'package:barmalda/ekri/barman_ekr.dart';
import 'package:barmalda/ekri/gla_ekr.dart';
import 'package:barmalda/komorka.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class PeriodEkr extends StatefulWidget {
  final ButilkaModel? bultilka1;
  final ButilkaModel? bultilka2;
  final ButilkaModel? bultilka3;
  final ButilkaModel? bultilka4;
  final ButilkaModel? bultilka5;
  final ButilkaModel? bultilka6;

  const PeriodEkr(
      {super.key,
      this.bultilka1,
      this.bultilka2,
      this.bultilka3,
      this.bultilka4,
      this.bultilka5,
      this.bultilka6});
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
  State<PeriodEkr> createState() => _PeriodEkrState();
}

class _PeriodEkrState extends State<PeriodEkr> {
  bool isUpRotator = true;
  RxDouble rotatorFon = 0.0.obs;
  RxInt _selBarSc = 30.obs;

  @override
  void initState() {
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color.fromRGBO(6, 5, 52, 1), Color.fromRGBO(0, 9, 85, 1)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Obx(
          () => CustomPaint(
            painter: Fonari(animatorFonarei: rotatorFon.value),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: Get.back,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/nazBar.png',
                                height: 39,
                                width: 39,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Select a\ntime mode:'.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 48,
                            width: 48,
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 110,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        IntrinsicWidth(
                          child: Container(
                            width: 188,
                            clipBehavior: Clip.none,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, -20),
                                  blurRadius: 20,
                                  spreadRadius: 16,
                                  color: Color.fromRGBO(15, 39, 255, 0.3),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(11),
                              gradient:
                                  (Komorka.komorka!.getBool('baPr') ?? false)
                                      ? LinearGradient(
                                          colors: [
                                            Color.fromRGBO(122, 81, 174, 1),
                                            Color.fromRGBO(17, 64, 184, 1),
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        )
                                      : LinearGradient(
                                          colors: [
                                            Color.fromRGBO(122, 81, 174, 1),
                                            Color.fromRGBO(17, 64, 184, 1),
                                            Color.fromRGBO(106, 106, 106, 1)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                            ),
                            child: Opacity(
                              opacity: 0,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 72,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6),
                                      child: Text(
                                        '30'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 72,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6),
                                      child: Text(
                                        '60'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 72,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6),
                                      child: Text(
                                        '120'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 72,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6),
                                      child: Text(
                                        '240'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          !(Komorka.komorka!.getBool('baPr') ??
                                              false),
                                      child: Text(
                                        'available only\nwith premium'
                                            .toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        IntrinsicWidth(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 4,
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    _selBarSc.value = 30;
                                  },
                                  child: Obx(
                                    () => AnimatedContainer(
                                      duration: 150.ms,
                                      height: 42,
                                      width: 214,
                                      decoration: _selBarSc.value == 30
                                          ? BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              image: DecorationImage(
                                                filterQuality:
                                                    FilterQuality.high,
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'assets/but_mask.png'),
                                              ))
                                          : null,
                                      alignment: Alignment.center,
                                      child: Text(
                                        '30'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize:
                                              _selBarSc.value == 30 ? 32 : 24,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    _selBarSc.value = 60;
                                  },
                                  child: Obx(
                                    () => AnimatedContainer(
                                      duration: 150.ms,
                                      height: 42,
                                      width: 214,
                                      decoration: _selBarSc.value == 60
                                          ? BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              image: DecorationImage(
                                                filterQuality:
                                                    FilterQuality.high,
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'assets/but_mask.png'),
                                              ))
                                          : null,
                                      alignment: Alignment.center,
                                      child: Text(
                                        '60'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize:
                                              _selBarSc.value == 60 ? 32 : 24,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    _selBarSc.value = 120;
                                  },
                                  child: Obx(
                                    () => AnimatedContainer(
                                      duration: 150.ms,
                                      height: 42,
                                      width: 214,
                                      decoration: _selBarSc.value == 120
                                          ? BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              image: DecorationImage(
                                                filterQuality:
                                                    FilterQuality.high,
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'assets/but_mask.png'),
                                              ))
                                          : null,
                                      alignment: Alignment.center,
                                      child: Text(
                                        '120'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize:
                                              _selBarSc.value == 120 ? 32 : 24,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    if ((Komorka.komorka!.getBool('baPr') ??
                                        false)) {
                                      _selBarSc.value = 240;
                                    }
                                  },
                                  child: Obx(
                                    () => AnimatedContainer(
                                      duration: 150.ms,
                                      height: 42,
                                      width: 214,
                                      decoration: _selBarSc.value == 240
                                          ? BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                              image: DecorationImage(
                                                filterQuality:
                                                    FilterQuality.high,
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    'assets/but_mask.png'),
                                              ))
                                          : null,
                                      alignment: Alignment.center,
                                      child: Text(
                                        '240'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize:
                                              _selBarSc.value == 240 ? 32 : 24,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: !(Komorka.komorka!.getBool('baPr') ??
                                      false),
                                  child: Text(
                                    'available only\nwith premium'
                                        .toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => BarmanEkr(barSec: _selBarSc.value));
                            },
                            child: Container(
                              height: 42,
                              width: 214,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  image: DecorationImage(
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/but_mask.png'),
                                  )),
                              alignment: Alignment.center,
                              child: Text(
                                'PLAY'.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
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
        ),
      ),
    );
  }
}
