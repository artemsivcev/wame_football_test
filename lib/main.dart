import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:wame_football_test/data/utilities/bloc/bloc_factory.dart';
import 'package:wame_football_test/data/utilities/injector/injector.dart';
import 'package:wame_football_test/presentation/screens/player_list/player_list_screen.dart';

void main() {
  runZonedGuarded(
    () async {
      await configureDependencies(GetIt.instance);
      await Hive.initFlutter();

      runApp(const MyApp());
    },
    (error, stackTrace) {
      /// There should be error handler with some backend logger, like Firebase Crashlytics
    },
  );
}

/// The main application widget.
class MyApp extends StatelessWidget {
  /// Constructor for creating a MyApp widget.
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => BlocFactory(getIt: GetIt.instance),
        ),
      ],
      child: MaterialApp(
        title: 'Wame Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PlayerListScreen(),
      ),
    );
  }
}
