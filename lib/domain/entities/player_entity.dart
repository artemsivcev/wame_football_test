import 'package:wame_football_test/domain/entities/birth_entity.dart';
import 'package:wame_football_test/domain/entities/statistics_entity.dart';

/// Represents a player entity with detailed information.
class PlayerEntity {
  /// Constructs a [PlayerEntity] with the provided details.
  ///
  /// Parameters:
  ///   - id: The unique identifier of the player.
  ///   - firstname: The first name of the player.
  ///   - lastname: The last name of the player.
  ///   - name: The full name of the player.
  ///   - nationality: The nationality of the player.
  ///   - photo: The photo URL of the player.
  ///   - age: The age of the player.
  ///   - height: The height of the player.
  ///   - weight: The weight of the player.
  ///   - birth: The birth information of the player.
  ///   - statistics: The statistical information of the player.
  const PlayerEntity({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.name,
    required this.nationality,
    required this.photo,
    required this.age,
    required this.height,
    required this.weight,
    required this.birth,
    required this.statistics,
  });

  /// The unique identifier of the player.
  final int id;

  /// The first name of the player.
  final String firstname;

  /// The last name of the player.
  final String lastname;

  /// The full name of the player.
  final String name;

  /// The nationality of the player.
  final String nationality;

  /// The photo URL of the player.
  final String photo;

  /// The age of the player.
  final int age;

  /// The height of the player.
  final String height;

  /// The weight of the player.
  final String weight;

  /// The birth information of the player.
  final BirthEntity birth;

  /// The statistical information of the player.
  final StatisticsEntity statistics;

  /// Retrieves basic player information as a map.
  ///
  /// Returns:
  ///   A map containing basic player information.
  Map<String, String> getPlayerInfo() {
    return {
      'Age': age.toString(),
      'Height': height,
      'Weight': weight,
      'Position': statistics.games.position,
      'League': statistics.league.name,
      'Season': statistics.league.season.toString(),
    };
  }
}
