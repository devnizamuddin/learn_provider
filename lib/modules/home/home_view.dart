import 'package:flutter/material.dart';
import 'package:learn_provider/components/ndrawer.dart';
import 'package:provider/provider.dart';

import '../../components/nswitch.dart';
import 'home_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Read & Watch both functionality can be achive my this type of object
    final homeProvider = Provider.of<HomeProvider>(context, listen: false);
    debugPrint('building Scafold');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const NDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Consumer is used to rebuild only specfic widget
            Consumer<HomeProvider>(
              builder: (BuildContext context, value, Widget? child) {
                debugPrint('building Counter Text');
                return Text(
                  '${homeProvider.count}',
                  key: const Key('counterState'),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),

            Consumer<HomeProvider>(
              builder: (BuildContext context, value, Widget? child) {
                debugPrint('building Switch');
                return NSwitch(
                    value: homeProvider.switchValue,
                    onChanged: homeProvider.changeSwitchValue);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => homeProvider.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
