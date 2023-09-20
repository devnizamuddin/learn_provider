import 'package:flutter/material.dart';
import 'package:learn_provider/routes/route_names.dart';
import 'package:learn_provider/routes/route_transaction.dart';

import '../config/app_assets.dart';

class NDrawer extends StatelessWidget {
  const NDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const navItemTextStyle = TextStyle(fontSize: 18);
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(child: Image.asset(AppAssets.ASSET_APP_LOGO)),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0),
              children: [
                const Divider(color: Colors.grey),
                ListTile(
                  onTap: () async {
                    RouteTransaction.pushNamed(
                        buildContext: context,
                        routeName: RouteNames.FAVORITES_SCREEN);
                  },
                  leading: const Icon(Icons.favorite, color: Colors.amber),
                  title: const Text(
                    'Favorites',
                    style: navItemTextStyle,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
