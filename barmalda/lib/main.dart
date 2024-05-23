import 'package:apphud/apphud.dart';
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
  const MyBarmalda({super.key});

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
