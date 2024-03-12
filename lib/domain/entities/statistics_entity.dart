/// Represents the statistics of a player.
class StatisticsEntity {
  /// Constructs a [StatisticsEntity] with the provided statistics data.
  ///
  /// Parameters:
  ///   - cards: Statistics related to cards.
  ///   - duels: Statistics related to duels.
  ///   - fouls: Statistics related to fouls.
  ///   - games: Statistics related to games.
  ///   - goals: Statistics related to goals.
  ///   - league: Statistics related to the league.
  ///   - passes: Statistics related to passes.
  ///   - penalty: Statistics related to penalty.
  ///   - shots: Statistics related to shots.
  ///   - tackles: Statistics related to tackles.
  ///   - team: Statistics related to the team.
  const StatisticsEntity({
    required this.cards,
    required this.duels,
    required this.fouls,
    required this.games,
    required this.goals,
    required this.league,
    required this.passes,
    required this.penalty,
    required this.shots,
    required this.tackles,
    required this.team,
  });

  /// Statistics related to cards.
  final CardsEntity cards;

  /// Statistics related to duels.
  final DuelsEntity duels;

  /// Statistics related to fouls.
  final FoulsEntity fouls;

  /// Statistics related to games.
  final GamesEntity games;

  /// Statistics related to goals.
  final GoalsEntity goals;

  /// Statistics related to the league.
  final LeagueEntity league;

  /// Statistics related to passes.
  final PassesEntity passes;

  /// Statistics related to penalty.
  final PenaltyEntity penalty;

  /// Statistics related to shots.
  final ShotsEntity shots;

  /// Statistics related to tackles.
  final TacklesEntity tackles;

  /// Statistics related to the team.
  final TeamEntity team;
}

/// Represents statistics related to cards.
class CardsEntity {
  /// Constructs a [CardsEntity] with the provided card statistics.
  ///
  /// Parameters:
  ///   - red: Number of red cards.
  ///   - yellow: Number of yellow cards.
  ///   - yellowRed: Number of yellow-red cards.
  const CardsEntity({
    required this.red,
    required this.yellow,
    required this.yellowRed,
  });

  /// Number of red cards.
  final int red;

  /// Number of yellow cards.
  final int yellow;

  /// Number of yellow-red cards.
  final int yellowRed;
}

/// Represents statistics related to duels.
class DuelsEntity {
  /// Constructs a [DuelsEntity] with the provided duel statistics.
  ///
  /// Parameters:
  ///   - total: Total number of duels.
  ///   - won: Number of duels won.
  const DuelsEntity({
    required this.total,
    required this.won,
  });

  /// Total number of duels.
  final int total;

  /// Number of duels won.
  final int won;
}

/// Represents statistics related to fouls.
class FoulsEntity {
  /// Constructs a [FoulsEntity] with the provided foul statistics.
  ///
  /// Parameters:
  ///   - committed: Number of fouls committed.
  ///   - drawn: Number of fouls drawn.
  const FoulsEntity({
    required this.committed,
    required this.drawn,
  });

  /// Number of fouls committed.
  final int? committed;

  /// Number of fouls drawn.
  final int? drawn;
}

/// Represents statistics related to games.
class GamesEntity {
  /// Constructs a [GamesEntity] with the provided game statistics.
  ///
  /// Parameters:
  ///   - appearances: Number of appearances in games.
  ///   - captain: Whether the player is a captain.
  ///   - lineups: Number of lineups in games.
  ///   - minutes: Number of minutes played in games.
  ///   - number: Player's number.
  ///   - position: Player's position.
  ///   - rating: Player's rating.
  const GamesEntity({
    required this.appearances,
    required this.captain,
    required this.lineups,
    required this.minutes,
    required this.number,
    required this.position,
    required this.rating,
  });

  /// Number of appearances in games.
  final int appearances;

  /// Whether the player is a captain.
  final bool captain;

  /// Number of lineups in games.
  final int lineups;

  /// Number of minutes played in games.
  final int minutes;

  /// Player's number.
  final String? number;

  /// Player's position.
  final String position;

  /// Player's rating.
  final String rating;
}

/// Represents statistics related to goals.
class GoalsEntity {
  /// Constructs a [GoalsEntity] with the provided goal statistics.
  ///
  /// Parameters:
  ///   - assists: Number of assists.
  ///   - conceded: Number of goals conceded.
  ///   - saves: Number of saves.
  ///   - total: Total number of goals.
  const GoalsEntity({
    required this.assists,
    required this.conceded,
    required this.saves,
    required this.total,
  });

  /// Number of assists.
  final int? assists;

  /// Number of goals conceded.
  final int? conceded;

  /// Number of saves.
  final int? saves;

  /// Total number of goals.
  final int? total;
}

/// Represents statistics related to the league.
class LeagueEntity {
  /// Constructs a [LeagueEntity] with the provided league statistics.
  ///
  /// Parameters:
  ///   - country: Country of the league.
  ///   - flag: Flag of the league.
  ///   - id: ID of the league.
  ///   - logo: Logo of the league.
  ///   - name: Name of the league.
  ///   - season: Season of the league.
  const LeagueEntity({
    required this.country,
    required this.flag,
    required this.id,
    required this.logo,
    required this.name,
    required this.season,
  });

  /// Country of the league.
  final String country;

  /// Flag of the league.
  final String? flag;

  /// ID of the league.
  final int id;

  /// Logo of the league.
  final String logo;

  /// Name of the league.
  final String name;

  /// Season of the league.
  final int season;
}

/// Represents statistics related to passes.
class PassesEntity {
  /// Constructs a [PassesEntity] with the provided pass statistics.
  ///
  /// Parameters:
  ///   - accuracy: Pass accuracy.
  ///   - key: Number of key passes.
  ///   - total: Total number of passes.
  const PassesEntity({
    required this.accuracy,
    required this.key,
    required this.total,
  });

  /// Pass accuracy.
  final int? accuracy;

  /// Number of key passes.
  final int? key;

  /// Total number of passes.
  final int? total;
}

/// Represents statistics related to penalties.
class PenaltyEntity {
  /// Constructs a [PenaltyEntity] with the provided penalty statistics.
  ///
  /// Parameters:
  ///   - committed: Number of penalties committed.
  ///   - missed: Number of penalties missed.
  ///   - saved: Number of penalties saved.
  ///   - scored: Number of penalties scored.
  ///   - won: Number of penalties won.
  const PenaltyEntity({
    required this.committed,
    required this.missed,
    required this.saved,
    required this.scored,
    required this.won,
  });

  /// Number of penalties committed.
  final int? committed;

  /// Number of penalties missed.
  final int missed;

  /// Number of penalties saved.
  final int? saved;

  /// Number of penalties scored.
  final int scored;

  /// Number of penalties won.
  final int? won;
}

/// Represents statistics related to shots.
class ShotsEntity {
  /// Constructs a [ShotsEntity] with the provided shot statistics.
  ///
  /// Parameters:
  ///   - on: Shots on target.
  ///   - total: Total number of shots.
  const ShotsEntity({
    required this.on,
    required this.total,
  });

  /// Shots on target.
  final int on;

  /// Total number of shots.
  final int total;
}

/// Represents statistics related to tackles.
class TacklesEntity {
  /// Constructs a [TacklesEntity] with the provided tackle statistics.
  ///
  /// Parameters:
  ///   - blocks: Number of tackles blocked.
  ///   - interceptions: Number of interceptions.
  ///   - total: Total number of tackles.
  const TacklesEntity({
    required this.blocks,
    required this.interceptions,
    required this.total,
  });

  /// Number of tackles blocked.
  final int? blocks;

  /// Number of interceptions.
  final int? interceptions;

  /// Total number of tackles.
  final int? total;
}

/// Represents information about a team.
class TeamEntity {
  /// Constructs a [TeamEntity] with the provided team information.
  ///
  /// Parameters:
  ///   - id: ID of the team.
  ///   - logo: Logo of the team.
  ///   - name: Name of the team.
  const TeamEntity({
    required this.id,
    required this.logo,
    required this.name,
  });

  /// ID of the team.
  final int id;

  /// Logo of the team.
  final String logo;

  /// Name of the team.
  final String name;
}
