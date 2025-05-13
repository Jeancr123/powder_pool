import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powder_pool/theme/theme.dart';

class ErrorScaffold extends StatelessWidget {
  const ErrorScaffold({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableText(message),
      ),
    );
  }
}

// This Error Material App can exist outside of translation if app initialization fails.
class ErrorMaterialApp extends ConsumerWidget {
  const ErrorMaterialApp({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(getAppTheme);
    return MaterialApp(
      builder: (context, child) {
        return ErrorScaffold(
            message: 'The application failed to load.\n$message');
      },
      theme: appTheme,
      title: 'Co-Dx PCR Device',
    );
  }
}
