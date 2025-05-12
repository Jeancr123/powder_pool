import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:powder_pool/theme/theme.dart';

class LoadingWelcome extends ConsumerWidget {
  const LoadingWelcome({Key? key, this.message = ''}) : super(key: key);

  final String message;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(getAppTheme);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Scaffold(body: _page(context));
      },
      theme: appTheme,
      title: 'Co-Dx PCR Device',
    );
  }

  Widget _page(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          SizedBox(
            child: Image.asset(
              'assets/images/logo-full.png',
              height: 100,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(2.5),
            height: 80.0,
            width: 80.0,
            child: CircularProgressIndicator(
              strokeWidth: 12,
              valueColor:
                  AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
              backgroundColor: Colors.grey.shade200,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
