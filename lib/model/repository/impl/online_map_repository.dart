import 'package:flutter/material.dart';
import 'package:try_flutter_map/logic/interface/map_repository.dart';

class OnlineMapRepository extends MapRepository {
  @override
  String fetchMapImage() {
    debugPrint("OnlineMapRepository -> fetchMapImage");
    return 'https://cyberjapandata.gsi.go.jp/xyz/std/0/0/0.png';
  }
}
