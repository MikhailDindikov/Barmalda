import 'package:barmalda/disco.dart';
import 'package:barmalda/komorka.dart';
import 'package:get/get.dart';

class DiscoCo extends FullLifeCycleController with FullLifeCycleMixin {
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
