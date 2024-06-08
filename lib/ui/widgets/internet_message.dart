import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../controller/connectivity_notifier.dart';

class InternetMessage extends ConsumerWidget {
  const InternetMessage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOnline = ref.watch(connectivityProvider).isOnline;

    if (isOnline) {
      return const SizedBox.shrink();
    } else {
      return Container(
        color: Colors.red,
        padding: const EdgeInsets.all(8.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wifi_off, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'No internet connection',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      );
    }
  }
}
