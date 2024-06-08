import 'package:demo_task/app_config.dart';
import 'package:demo_task/routes/app_router.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({super.key});

  final appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
