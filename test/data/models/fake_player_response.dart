import 'package:wame_football_test/data/models/player_model.dart';
import 'package:wame_football_test/data/models/player_statistics_response_model.dart';
import 'package:wame_football_test/data/models/statistics_model.dart';

PlayerStatisticsResponseModel getFakePlayerResponse() {
  return PlayerStatisticsResponseModel(
    player: Player(
      age: 28,
      birth: Birth(
        country: 'England',
        date: '1993-07-28',
        place: 'London',
      ),
      firstname: 'Harry',
      height: '188 cm',
      id: 184,
      lastname: 'Kane',
      name: 'H. Kane',
      nationality: 'England',
      photo: 'https://media.api-sports.io/football/players/184.png',
      weight: '86 kg',
    ),
    statistics: [
      Statistics(
        cards: Cards(
          red: 0,
          yellow: 1,
          yellowred: 0,
        ),
        duels: Duels(
          total: 369,
          won: 168,
        ),
        fouls: Fouls(
          committed: 24,
          drawn: 51,
        ),
        games: Games(
          appearences: 27,
          captain: false,
          lineups: 27,
          minutes: 2367,
          number: null,
          position: 'Attacker',
          rating: '7.677777',
        ),
        goals: Goals(
          assists: 13,
          conceded: 0,
          saves: null,
          total: 17,
        ),
        league: League(
          country: 'England',
          flag: 'https://media.api-sports.io/flags/gb.svg',
          id: 39,
          logo: 'https://media.api-sports.io/football/leagues/39.png',
          name: 'Premier League',
          season: 2020,
        ),
        passes: Passes(
          accuracy: 17,
          key: 40,
          total: 685,
        ),
        penalty: Penalty(
          commited: null,
          missed: 0,
          saved: null,
          scored: 4,
          won: null,
        ),
        shots: Shots(
          on: 38,
          total: 82,
        ),
        tackles: Tackles(
          blocks: 8,
          interceptions: 9,
          total: 18,
        ),
        team: Team(
          id: 47,
          logo: 'https://media.api-sports.io/football/teams/47.png',
          name: 'Tottenham',
        ),
      ),
    ],
  );
}
