import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:try_flutter_map/firebase_options.dart';
import 'package:try_flutter_map/logic/map_logic.dart';

import 'model/repository/impl/offline_map_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';
    //final logic = MapLogic(OnlineMapRepository());
    final logic = MapLogic(OfflineMapRepository());

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Image.network(logic.fetchMapImage()),
      ),
    );
  }
}
