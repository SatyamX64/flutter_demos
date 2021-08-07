import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'data/post_api_service.dart';
import 'home_page.dart';

void main() {
  _setupLogging();
  runApp(MyApp());
}

// Logger is a package from the Dart team. While you can just simply use print()
// to easily print to the debug console, using a fully-blown logger allows you to
// easily set up multiple logging "levels" - e.g. INFO, WARNING, ERROR.

// Chopper already uses the Logger package. Printing the logs to the console requires
// the following setup.
void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      // The initialized PostApiService is now available down the widget tree
      create: (_) => PostApiService.create(),
      // Always call dispose on the ChopperClient to release resources
      dispose: (context, PostApiService service) => service.client.dispose(),
      child: MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}
