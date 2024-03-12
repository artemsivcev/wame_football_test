import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:wame_football_test/data/models/player_statistics_response_model.dart';

/// Provider for storing and retrieving player data from Hive local storage.
@Injectable()
class PlayerStorageProvider {
  static const int _cacheLiveTimeInMinutes = 15;
  static const String _boxName = 'playerBox';
  static const String _playersKey = 'players';
  static const String _lastUpdatedKey = 'playerBox';

  /// Saves player data to Hive local storage.
  ///
  /// [playersAndStatistics]: List of player statistics models to be saved.
  Future<void> saveData(
    List<PlayerStatisticsResponseModel> playersAndStatistics,
  ) async {
    final box = await Hive.openBox<dynamic>(_boxName);
    final jsonDataList =
        playersAndStatistics.map((player) => player.toJson()).toList();
    await box.put(_playersKey, jsonEncode(jsonDataList));
    await box.put(_lastUpdatedKey, DateTime.now().toIso8601String());
  }

  /// Retrieves player data from Hive local storage.
  ///
  /// Returns a list of player statistics models.
  Future<List<PlayerStatisticsResponseModel>> getData() async {
    final box = await Hive.openBox<dynamic>(_boxName);
    final jsonData = box.get(_playersKey);
    if (jsonData != null) {
      final jsonDataList = jsonDecode(jsonData as String) as List;
      final players = jsonDataList
          .map(
            (json) => PlayerStatisticsResponseModel.fromJson(
              json as Map<String, dynamic>,
            ),
          )
          .toList();
      return players;
    }
    return [];
  }

  /// Retrieves the last updated timestamp from Hive local storage.
  ///
  /// Returns a [DateTime] object representing the last update time.
  Future<DateTime> getLastUpdated() async {
    final box = await Hive.openBox<dynamic>(_boxName);
    final jsonData = box.get(_lastUpdatedKey) as String?;
    if (jsonData != null) {
      final jsonDataDateTime = DateTime.parse(jsonData);
      return jsonDataDateTime;
    }
    return DateTime.now();
  }

  /// Checks if the cached data is expired.
  ///
  /// Returns `true` if the cached data is expired, otherwise `false`.
  Future<bool> isExpired() async {
    final lastUpdated = await getLastUpdated();
    final currentTime = DateTime.now();
    final difference = currentTime.difference(lastUpdated);
    return difference.inMinutes > _cacheLiveTimeInMinutes;
  }
}
