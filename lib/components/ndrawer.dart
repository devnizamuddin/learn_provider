import 'package:flutter/material.dart';

import '../config/app_assets.dart';

class NDrawer extends StatelessWidget {
  const NDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(child: Image.asset(AppAssets.ASSET_APP_LOGO)),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0),
              children: const [
                Divider(color: Colors.grey),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
