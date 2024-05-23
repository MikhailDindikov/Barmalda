import 'package:apphud/apphud.dart';
import 'package:barmalda/butilka_model.dart';
import 'package:barmalda/dicso_co.dart';
import 'package:barmalda/ekri/gla_ekr.dart';
import 'package:barmalda/komorka.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Komorka.leha();
  //await Komorka.komorka!.setBool('baPr',false);
  //await Apphud.start(apiKey: 'app_Srxuhpmvr4gMKqLfDH7Gf1uxEatAXo');
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyBarmalda());
}

class MyBarmalda extends StatelessWidget {
  final ButilkaModel? bultilka1;
  final ButilkaModel? bultilka2;
  final ButilkaModel? bultilka3;
  final ButilkaModel? bultilka4;
  final ButilkaModel? bultilka5;
  final ButilkaModel? bultilka6;
  const MyBarmalda({super.key, this.bultilka1, this.bultilka2, this.bultilka3, this.bultilka4, this.bultilka5, this.bultilka6});
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
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onInit: () {
        Get.put(DiscoCo());
      },
      title: 'Barmen Jas',
      theme: ThemeData(
        fontFamily: 'WendyOne',
        useMaterial3: true,
      ),
      home: const GlaErk(),
    );
  }
}
