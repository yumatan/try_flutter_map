import 'package:flutter/foundation.dart';
import 'package:try_flutter_map/logic/interface/map_repository.dart';

class MapLogic {
  MapLogic(this.repository);

  final MapRepository repository;

  String fetchMapImage() {
    debugPrint("MapLogic -> fetchMapImage");
    return repository.fetchMapImage();
  }
}
