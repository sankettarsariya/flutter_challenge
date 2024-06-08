import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final connectivityProvider = ChangeNotifierProvider<ConnectivityNotifier>(
  (ref) => ConnectivityNotifier(),
);

class ConnectivityNotifier extends ChangeNotifier {
  bool _isOnline = true;
  bool get isOnline => _isOnline;

  ConnectivityNotifier() {
    _checkInitialConnection();
    Connectivity().onConnectivityChanged.listen((status) async {
      final hasConnection = await _hasInternetConnection();
      if (hasConnection != _isOnline) {
        _isOnline = hasConnection;
        notifyListeners();
      }
    });
  }

  Future<void> _checkInitialConnection() async {
    _isOnline = await _hasInternetConnection();
    notifyListeners();
  }

  Future<bool> _hasInternetConnection() async {
    return await InternetConnectionChecker().hasConnection;
  }
}
