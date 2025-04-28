import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

abstract class IAdviceLocalDatasource {
  Future<List<String>> getFavorites();
  Future<void> saveFavorites(List<String> favorites);
}

class AdviceLocalDatasource implements IAdviceLocalDatasource {
  static const _favoritesKey = 'FAVORITE_ADVICES';

  @override
  Future<List<String>> getFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_favoritesKey);
    if (jsonString == null) return [];
    return List<String>.from(jsonDecode(jsonString));
  }

  @override
  Future<void> saveFavorites(List<String> favorites) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = jsonEncode(favorites);
    await prefs.setString(_favoritesKey, jsonString);
  }
}
