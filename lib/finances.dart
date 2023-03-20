import 'package:flutter/material.dart';

import 'package:growwithriz/financesfolder/widgets/bottomnavigationbar.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// import 'financesfolder//model/add_date.dart';

// void finances() async {
//   await Hive.initFlutter();
//   Hive.registerAdapter(AdddataAdapter());
//   await Hive.openBox<Add_data>('data');
//   runApp(const financess());
// }

class financess extends StatelessWidget {
  const financess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bottom(),
    );
  }
}
