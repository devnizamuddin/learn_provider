import 'package:flutter/material.dart';
import 'package:learn_provider/modules/favorites/favorites_provider.dart';
import 'package:provider/provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<FavoritesProvider>(context, listen: false);
    debugPrint('FavoritesScreen building');
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (buildContext, index) {
              debugPrint('Favorites ListItem building');
              return Consumer<FavoritesProvider>(
                  builder: (buildContext, provider, widget) {
                debugPrint('Favorites Card building');
                return Card(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Item Number : ${index + 1}'),
                      InkWell(
                        onTap: () =>
                            provider.onTapFavoritesIcon(itemIndex: index),
                        child: Icon(
                          provider.favoriteItems.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                ));
              });
            }),
      ),
    );
  }
}
