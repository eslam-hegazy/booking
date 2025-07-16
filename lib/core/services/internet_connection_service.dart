import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  late final Stream<ConnectivityResult> _connectivityStream;
  final GlobalKey<NavigatorState> navigatorKey;

  bool _dialogShown = false;

  ConnectivityService({required this.navigatorKey}) {
    _connectivityStream = _connectivity.onConnectivityChanged
        .map((List<ConnectivityResult> results) => results.first);

    _connectivityStream.listen((result) {
      final isConnected = result != ConnectivityResult.none;

      final context = navigatorKey.currentContext;

      if (context == null) return;

      if (!isConnected && !_dialogShown) {
        _dialogShown = true;
        // TODO: navigate to interbet checker screen
        // navigatorKey.currentState?.push(
        //   MaterialPageRoute(
        //     builder: (_) => const InternetConnectionScreen(),
        //   ),
        // );
      } else if (isConnected && _dialogShown) {
        if (navigatorKey.currentState?.canPop() ?? false) {
          navigatorKey.currentState?.pop();
        }
        _dialogShown = false;
      }
    });
  }

  Future<bool> checkNow() async {
    final result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }
}
