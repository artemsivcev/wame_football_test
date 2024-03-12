import 'package:wame_football_test/domain/entities/player_entity.dart';

/// Represents a list of players along with the last update time.
class PlayersListEntity {
  /// Constructs a [PlayersListEntity] with the provided players and last update time.
  ///
  /// Parameters:
  ///   - players: The list of players.
  ///   - lastUpdate: The timestamp of the last update.
  const PlayersListEntity({
    required this.players,
    required this.lastUpdate,
  });

  /// The list of players.
  final List<PlayerEntity> players;

  /// The timestamp of the last update.
  final DateTime lastUpdate;
}
