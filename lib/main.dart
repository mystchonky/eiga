import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'classes/adapters/library_item.dart';
import 'ui/app.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  await Hive.openBox(HiveStore.defaultBoxName);

  Hive.registerAdapter(LibraryItemAdapter());
  Hive.openBox<LibraryItem>('library');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  runApp(App());
}
