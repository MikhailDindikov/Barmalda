import 'package:just_audio/just_audio.dart';

import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';
import 'gavgav/widgets1.dart';

class Disco {
  static bool discoPl = false;
  static AudioPlayer disco = AudioPlayer();

  static ((int, int), List)? goBarMu(String name) {
    Disco.discoPl = true;
    disco
      ..setLoopMode(LoopMode.one)
      ..setAsset('assets/$name')
      ..play();

    return ((1, 1), []);
  }

  static ((int, int), List)? musBarOne(String name) {
    AudioPlayer()
      ..setAsset('assets/$name')
      ..play();

    return ((1, 1), []);
  }

  static ((int, int), List)? stoBarMu() {
    Disco.discoPl = false;
    disco.stop();
    return ((1, 1), []);
  }
}
