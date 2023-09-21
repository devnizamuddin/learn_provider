import 'package:flutter/foundation.dart';

class FavoritesProvider with ChangeNotifier, DiagnosticableTreeMixin {
  List<int> favoriteItems = [];

  onTapFavoritesIcon({required int itemIndex}) {
    favoriteItems.contains(itemIndex)
        ? favoriteItems.remove(itemIndex)
        : favoriteItems.add(itemIndex);
    notifyListeners();
  }
}
