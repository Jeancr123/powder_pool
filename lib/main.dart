import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powder_pool/router/application/router.dart';
import 'package:powder_pool/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer(overrides: [], observers: []);
  // container.read(identityControllerProvider);

  runApp(
    UncontrolledProviderScope(container: container, child: PowderPoolWebApp()),
  );
}

class PowderPoolWebApp extends ConsumerWidget {
  const PowderPoolWebApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(getAppTheme);

    return MaterialApp.router(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      title: 'PowderPool Platform',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routerConfig: router,
    );
  }
}
