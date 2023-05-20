import 'package:flutter/foundation.dart';
import 'package:try_flutter_map/logic/interface/map_repository.dart';

class OfflineMapRepository extends MapRepository {
  @override
  String fetchMapImage() {
    debugPrint("OfflineMapRepository -> fetchMapImage");
    return 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif';
  }
}
