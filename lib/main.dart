import 'package:flutter/material.dart';
import 'financesfolder/model/add_date.dart';
import 'splashscreen.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main(List<String> args) async {
  // WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MaterialApp(
    // debugShowCheckedModeBanner: false,
    home: splash(),
  ));
}
