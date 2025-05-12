import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:powder_pool/router/domain/routes.dart';
import 'package:powder_pool/theme/theme.dart';

class NavigationOption {
  final Widget icon;
  final String routeName;
  final String title;
  final bool requiresToken;
  final String? baseUrl;

  NavigationOption({
    required this.icon,
    this.routeName = '/',
    required this.title,
    this.requiresToken = false,
    this.baseUrl,
  });
}

class AppShell extends ConsumerWidget {
  final Widget child;

  AppShell({required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(getAppTheme);
    List<NavigationOption> navigationOptions = [
      NavigationOption(
        icon: Icon(Icons.home),
        routeName: Routes.home.name,
        title: 'Home',
      ),
    ];

    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context, ref, navigationOptions),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.fromLTRB(125, 0, 0, 0),
        child: Center(
          child: SelectableText(
            'Co-Dx Research & Development Platform',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16, // Increase the font size by 1 or 2 pixels
            ),
          ),
        ),
      ),
      actions: <Widget>[BannerApp()],
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    List<NavigationOption> navigationOptions,
  ) {
    var uri =
        GoRouter.of(context).routeInformationProvider.value.uri.toString();
    int index = navigationOptions.indexWhere(
      (option) => '/${option.routeName}' == uri,
    );

    return Row(
      children: <Widget>[
        NavigationRail(
          selectedIndex: index >= 0 ? index : 0,
          onDestinationSelected:
              (index) =>
                  onDestinationSelected(context, ref, index, navigationOptions),
          labelType: NavigationRailLabelType.all,
          destinations: navigationOptions.toDestinations(),
        ),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(child: Padding(padding: EdgeInsets.all(10.0), child: child)),
      ],
    );
  }

  void onDestinationSelected(
    BuildContext context,
    WidgetRef ref,
    int index,
    List<NavigationOption> navigationOptions,
  ) {
    var option = navigationOptions[index];
    // if (option.requiresToken) {
    //   _launchUrlWithToken(context, ref, option);
    // } else {
    //   // GoRouter.of(context).push('/${option.routeName}');
    //   GoRouter.of(context).goNamed(option.routeName);
    // }
    GoRouter.of(context).goNamed(option.routeName);
  }
}

extension on List<NavigationOption> {
  int getSelectedIndex(BuildContext context) {
    final currentRoute =
        GoRouter.of(context).routeInformationProvider.value.uri.toString();
    int index = indexWhere((option) => '/${option.routeName}' == currentRoute);
    // Fallback to a default index if no match is found
    return index >= 0
        ? index
        : 0; // Assuming 0 is a valid index for a home or default page
  }

  List<NavigationRailDestination> toDestinations() =>
      map(
        (option) => NavigationRailDestination(
          icon: option.icon,
          label: Text(option.title),
        ),
      ).toList();
}

class BannerApp extends ConsumerWidget {
  const BannerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String bannerTxt = 'PowderPool Platform';
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: const EdgeInsets.only(top: 50, right: 50),
        child: Banner(
          message: bannerTxt.toUpperCase(),
          location: BannerLocation.bottomStart,
          color: Colors.red,
        ),
      ),
    );
  }
}
