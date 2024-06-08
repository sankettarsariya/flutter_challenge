import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app.dart';

//here is entry point of app
void main() {
  runApp(ProviderScope(child:App()));
}


