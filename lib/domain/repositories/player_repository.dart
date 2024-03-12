import 'package:wame_football_test/domain/entities/player_entity.dart';

/// An abstract interface representing a repository for fetching player data.
abstract interface class PlayerRepository {
  /// Fetches a list of players along with the last update timestamp.
  ///
  /// Returns a tuple containing a list of [PlayerEntity] objects and the
  /// [DateTime] indicating the last update time.
  Future<(List<PlayerEntity>, DateTime)> fetchPlayers();
}
