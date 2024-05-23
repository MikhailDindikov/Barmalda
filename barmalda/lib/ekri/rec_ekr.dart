import 'dart:async';
import 'dart:ui';

import 'package:barmalda/butilka_model.dart';
import 'package:barmalda/ekri/gla_ekr.dart';
import 'package:barmalda/komorka.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RecEkr extends StatefulWidget {
  const RecEkr({super.key});
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
  State<RecEkr> createState() => _RecEkrState();
}

class _RecEkrState extends State<RecEkr> {
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
            painter: Fonari(
              animatorFonarei: rotatorFon.value,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: Get.back,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Image.asset(
                              'assets/nazBar.png',
                              height: 39,
                              width: 39,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Records'.toUpperCase(),
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
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: IntrinsicHeight(
                                child: Stack(
                                  alignment: Alignment.center,
                                  fit: StackFit.loose,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: Get.height / 3,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                          'assets/bar_table.png',
                                        ),
                                        filterQuality: FilterQuality.high,
                                        fit: BoxFit.fitWidth,
                                      )),
                                    ),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        IntrinsicWidth(
                                          child: Container(
                                            height: 43,
                                            clipBehavior: Clip.none,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  offset: Offset(-20, 0),
                                                  blurRadius: 14,
                                                  spreadRadius: 12,
                                                  color: Color.fromRGBO(
                                                      15, 39, 255, 0.3),
                                                ),
                                                BoxShadow(
                                                  offset: Offset(20, 0),
                                                  blurRadius: 14,
                                                  spreadRadius: 12,
                                                  color: Color.fromRGBO(
                                                      15, 39, 255, 0.3),
                                                ),
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              gradient: (Komorka.komorka!
                                                          .getBool('baPr') ??
                                                      false)
                                                  ? LinearGradient(
                                                      colors: [
                                                        Color.fromRGBO(
                                                            122, 81, 174, 1),
                                                        Color.fromRGBO(
                                                            17, 64, 184, 1),
                                                      ],
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                    )
                                                  : LinearGradient(
                                                      colors: [
                                                        Color.fromRGBO(
                                                            122, 81, 174, 1),
                                                        Color.fromRGBO(
                                                            17, 64, 184, 1),
                                                        Color.fromRGBO(
                                                            106, 106, 106, 1)
                                                      ],
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                    ),
                                            ),
                                            child: Opacity(
                                              opacity: 0,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 72,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 16),
                                                    child: Text(
                                                      '30'.toUpperCase(),
                                                      style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 72,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 16),
                                                    child: Text(
                                                      '60'.toUpperCase(),
                                                      style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 72,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 16),
                                                    child: Text(
                                                      '120'.toUpperCase(),
                                                      style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 72,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 16),
                                                    child: Text(
                                                      '240'.toUpperCase(),
                                                      style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        IntrinsicWidth(
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 4,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _selBarSc.value = 30;
                                                },
                                                child: Obx(
                                                  () => AnimatedContainer(
                                                    duration: 150.ms,
                                                    height: 51,
                                                    decoration: _selBarSc
                                                                .value ==
                                                            30
                                                        ? BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        9),
                                                            image:
                                                                DecorationImage(
                                                              filterQuality:
                                                                  FilterQuality
                                                                      .high,
                                                              fit: BoxFit.fill,
                                                              image: AssetImage(
                                                                  'assets/but_mask.png'),
                                                            ))
                                                        : null,
                                                    constraints: BoxConstraints(
                                                        minWidth: 76),
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 16)
                                                        .copyWith(
                                                            top: 4, bottom: 7),
                                                    child: Text(
                                                      '30'.toUpperCase(),
                                                      style: TextStyle(
                                                        fontSize:
                                                            _selBarSc.value ==
                                                                    30
                                                                ? 32
                                                                : 24,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _selBarSc.value = 60;
                                                },
                                                child: Obx(
                                                  () => AnimatedContainer(
                                                    duration: 150.ms,
                                                    height: 51,
                                                    decoration: _selBarSc
                                                                .value ==
                                                            60
                                                        ? BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        9),
                                                            image:
                                                                DecorationImage(
                                                              filterQuality:
                                                                  FilterQuality
                                                                      .high,
                                                              fit: BoxFit.fill,
                                                              image: AssetImage(
                                                                  'assets/but_mask.png'),
                                                            ))
                                                        : null,
                                                    constraints: BoxConstraints(
                                                        minWidth: 76),
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 30)
                                                        .copyWith(
                                                            top: 4, bottom: 7),
                                                    child: Text(
                                                      '60'.toUpperCase(),
                                                      style: TextStyle(
                                                        fontSize:
                                                            _selBarSc.value ==
                                                                    60
                                                                ? 32
                                                                : 24,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _selBarSc.value = 120;
                                                },
                                                child: Obx(
                                                  () => AnimatedContainer(
                                                    duration: 150.ms,
                                                    height: 51,
                                                    decoration: _selBarSc
                                                                .value ==
                                                            120
                                                        ? BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        9),
                                                            image:
                                                                DecorationImage(
                                                              filterQuality:
                                                                  FilterQuality
                                                                      .high,
                                                              fit: BoxFit.fill,
                                                              image: AssetImage(
                                                                  'assets/but_mask.png'),
                                                            ))
                                                        : null,
                                                    constraints: BoxConstraints(
                                                        minWidth: 76),
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 30)
                                                        .copyWith(
                                                            top: 4, bottom: 7),
                                                    child: Text(
                                                      '120'.toUpperCase(),
                                                      style: TextStyle(
                                                        fontSize:
                                                            _selBarSc.value ==
                                                                    120
                                                                ? 32
                                                                : 24,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  if ((Komorka.komorka!
                                                          .getBool('baPr') ??
                                                      false)) {
                                                    _selBarSc.value = 240;
                                                  }
                                                },
                                                child: Obx(
                                                  () => AnimatedContainer(
                                                    duration: 150.ms,
                                                    height: 51,
                                                    decoration: _selBarSc
                                                                .value ==
                                                            240
                                                        ? BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        9),
                                                            image:
                                                                DecorationImage(
                                                              filterQuality:
                                                                  FilterQuality
                                                                      .high,
                                                              fit: BoxFit.fill,
                                                              image: AssetImage(
                                                                  'assets/but_mask.png'),
                                                            ))
                                                        : null,
                                                    constraints: BoxConstraints(
                                                        minWidth: 76),
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 30)
                                                        .copyWith(
                                                            top: 4, bottom: 7),
                                                    child: Text(
                                                      '240'.toUpperCase(),
                                                      style: TextStyle(
                                                        fontSize:
                                                            _selBarSc.value ==
                                                                    240
                                                                ? 32
                                                                : 24,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 11,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: Get.height / 3 - 14,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Image.asset(
                                    'assets/score_kassa.png',
                                    filterQuality: FilterQuality.high,
                                    height: 219,
                                  ),
                                  Positioned(
                                    top: 34,
                                    left: 30,
                                    child: Container(
                                      width: 91,
                                      child: Text(
                                        Komorka.komorka!.getInt(_selBarSc.value
                                                    .toString()) ==
                                                null
                                            ? '-'
                                            : NumberFormat.decimalPattern()
                                                .format(Komorka.komorka!.getInt(
                                                    _selBarSc.value.toString()))
                                                .toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 26,
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
}
