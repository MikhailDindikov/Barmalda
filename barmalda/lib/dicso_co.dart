import 'package:barmalda/butilka_model.dart';
import 'package:barmalda/disco.dart';
import 'package:barmalda/komorka.dart';
import 'package:get/get.dart';

class DiscoCo extends FullLifeCycleController with FullLifeCycleMixin {
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
  void onDetached() {}

  @override
  void onInactive() {
    if (Disco.discoPl) {
      Disco.stoBarMu();
    }
  }

  @override
  void onPaused() {}

  @override
  void onResumed() {
    if ((Komorka.komorka!.getBool('mup') ?? true)) {
      Disco.goBarMu('mus/disco.mp3');
    }
  }

  @override
  void onHidden() {}
}
