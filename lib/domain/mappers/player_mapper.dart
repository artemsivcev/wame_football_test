import 'package:wame_football_test/data/models/player_statistics_response_model.dart';
import 'package:wame_football_test/domain/entities/birth_entity.dart';
import 'package:wame_football_test/domain/entities/player_entity.dart';
import 'package:wame_football_test/domain/entities/statistics_entity.dart';

/// A mapper class responsible for converting [PlayerStatisticsResponseModel] objects
/// to [PlayerEntity] objects.
class PlayerMapper {
  /// Maps a [PlayerStatisticsResponseModel] object to a [PlayerEntity] object.
  ///
  /// Parameters:
  ///   - playerAndStatistics: The [PlayerStatisticsResponseModel] object to map.
  ///
  /// Returns:
  ///   - A [PlayerEntity] object mapped from the provided [PlayerStatisticsResponseModel].
  static PlayerEntity mapToEntity(
    PlayerStatisticsResponseModel playerAndStatistics,
  ) {
    return PlayerEntity(
      id: playerAndStatistics.player.id,
      firstname: playerAndStatistics.player.firstname,
      lastname: playerAndStatistics.player.lastname,
      name: playerAndStatistics.player.name,
      nationality: playerAndStatistics.player.nationality,
      photo: playerAndStatistics.player.photo,
      age: playerAndStatistics.player.age,
      height: playerAndStatistics.player.height,
      weight: playerAndStatistics.player.weight,
      birth: BirthEntity(
        country: playerAndStatistics.player.birth.country,
        date: playerAndStatistics.player.birth.date,
        place: playerAndStatistics.player.birth.place,
      ),
      statistics: StatisticsEntity(
        cards: CardsEntity(
          red: playerAndStatistics.statistics.first.cards.red,
          yellow: playerAndStatistics.statistics.first.cards.yellow,
          yellowRed: playerAndStatistics.statistics.first.cards.yellowred,
        ),
        duels: DuelsEntity(
          total: playerAndStatistics.statistics.first.duels.total,
          won: playerAndStatistics.statistics.first.duels.won,
        ),
        fouls: FoulsEntity(
          committed: playerAndStatistics.statistics.first.fouls.committed,
          drawn: playerAndStatistics.statistics.first.fouls.drawn,
        ),
        games: GamesEntity(
          appearances: playerAndStatistics.statistics.first.games.appearences,
          captain: playerAndStatistics.statistics.first.games.captain,
          lineups: playerAndStatistics.statistics.first.games.lineups,
          minutes: playerAndStatistics.statistics.first.games.minutes,
          number: playerAndStatistics.statistics.first.games.number,
          position: playerAndStatistics.statistics.first.games.position,
          rating: playerAndStatistics.statistics.first.games.rating,
        ),
        goals: GoalsEntity(
          assists: playerAndStatistics.statistics.first.goals.assists,
          conceded: playerAndStatistics.statistics.first.goals.conceded,
          saves: playerAndStatistics.statistics.first.goals.saves,
          total: playerAndStatistics.statistics.first.goals.total,
        ),
        league: LeagueEntity(
          country: playerAndStatistics.statistics.first.league.country,
          flag: playerAndStatistics.statistics.first.league.flag,
          id: playerAndStatistics.statistics.first.league.id,
          logo: playerAndStatistics.statistics.first.league.logo,
          name: playerAndStatistics.statistics.first.league.name,
          season: playerAndStatistics.statistics.first.league.season,
        ),
        passes: PassesEntity(
          accuracy: playerAndStatistics.statistics.first.passes.accuracy,
          key: playerAndStatistics.statistics.first.passes.key,
          total: playerAndStatistics.statistics.first.passes.total,
        ),
        penalty: PenaltyEntity(
          committed: playerAndStatistics.statistics.first.penalty.commited,
          missed: playerAndStatistics.statistics.first.penalty.missed,
          saved: playerAndStatistics.statistics.first.penalty.saved,
          scored: playerAndStatistics.statistics.first.penalty.scored,
          won: playerAndStatistics.statistics.first.penalty.won,
        ),
        shots: ShotsEntity(
          on: playerAndStatistics.statistics.first.shots.on,
          total: playerAndStatistics.statistics.first.shots.total,
        ),
        tackles: TacklesEntity(
          blocks: playerAndStatistics.statistics.first.tackles.blocks,
          interceptions:
              playerAndStatistics.statistics.first.tackles.interceptions,
          total: playerAndStatistics.statistics.first.tackles.total,
        ),
        team: TeamEntity(
          id: playerAndStatistics.statistics.first.team.id,
          logo: playerAndStatistics.statistics.first.team.logo,
          name: playerAndStatistics.statistics.first.team.name,
        ),
      ),
    );
  }
}
