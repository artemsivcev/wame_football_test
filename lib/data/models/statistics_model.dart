import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_model.freezed.dart';
part 'statistics_model.g.dart';

/// Raw data class
@freezed
class Statistics with _$Statistics {
  /// Default constructor
  factory Statistics({
    required Cards cards,
    required Duels duels,
    required Fouls fouls,
    required Games games,
    required Goals goals,
    required League league,
    required Passes passes,
    required Penalty penalty,
    required Shots shots,
    required Tackles tackles,
    required Team team,
  }) = _Statistics;

  /// Generated factory to convert [json] to proper model
  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);
}

/// Raw data class
@freezed
class Cards with _$Cards {
  /// Default constructor
  factory Cards({
    required int red,
    required int yellow,
    required int yellowred,
  }) = _Cards;

  /// Generated factory to convert [json] to proper model
  factory Cards.fromJson(Map<String, dynamic> json) => _$CardsFromJson(json);
}

/// Raw data class
@freezed
class Duels with _$Duels {
  /// Default constructor
  factory Duels({
    required int total,
    required int won,
  }) = _Duels;

  /// Generated factory to convert [json] to proper model
  factory Duels.fromJson(Map<String, dynamic> json) => _$DuelsFromJson(json);
}

/// Raw data class
@freezed
class Fouls with _$Fouls {
  /// Default constructor
  factory Fouls({
    required int? committed,
    required int? drawn,
  }) = _Fouls;

  /// Generated factory to convert [json] to proper model
  factory Fouls.fromJson(Map<String, dynamic> json) => _$FoulsFromJson(json);
}

/// Raw data class
@freezed
class Games with _$Games {
  /// Default constructor
  factory Games({
    required int appearences,
    required bool captain,
    required int lineups,
    required int minutes,
    required String? number,
    required String position,
    required String rating,
  }) = _Games;

  /// Generated factory to convert [json] to proper model
  factory Games.fromJson(Map<String, dynamic> json) => _$GamesFromJson(json);
}

/// Raw data class
@freezed
class Goals with _$Goals {
  /// Default constructor
  factory Goals({
    required int? assists,
    required int? conceded,
    required int? saves,
    required int? total,
  }) = _Goals;

  /// Generated factory to convert [json] to proper model
  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}

/// Raw data class
@freezed
class League with _$League {
  /// Default constructor
  factory League({
    required String country,
    required String? flag,
    required int id,
    required String logo,
    required String name,
    required int season,
  }) = _League;

  /// Generated factory to convert [json] to proper model
  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}

/// Raw data class
@freezed
class Passes with _$Passes {
  /// Default constructor
  factory Passes({
    required int? accuracy,
    required int? key,
    required int? total,
  }) = _Passes;

  /// Generated factory to convert [json] to proper model
  factory Passes.fromJson(Map<String, dynamic> json) => _$PassesFromJson(json);
}

/// Raw data class
@freezed
class Penalty with _$Penalty {
  /// Default constructor
  factory Penalty({
    required int? commited,
    required int missed,
    required int? saved,
    required int scored,
    required int? won,
  }) = _Penalty;

  /// Generated factory to convert [json] to proper model
  factory Penalty.fromJson(Map<String, dynamic> json) =>
      _$PenaltyFromJson(json);
}

/// Raw data class
@freezed
class Shots with _$Shots {
  /// Default constructor
  factory Shots({
    required int on,
    required int total,
  }) = _Shots;

  /// Generated factory to convert [json] to proper model
  factory Shots.fromJson(Map<String, dynamic> json) => _$ShotsFromJson(json);
}

/// Raw data class
@freezed
class Tackles with _$Tackles {
  /// Default constructor
  factory Tackles({
    required int? blocks,
    required int? interceptions,
    required int? total,
  }) = _Tackles;

  /// Generated factory to convert [json] to proper model
  factory Tackles.fromJson(Map<String, dynamic> json) =>
      _$TacklesFromJson(json);
}

/// Raw data class
@freezed
class Team with _$Team {
  /// Default constructor
  factory Team({
    required int id,
    required String logo,
    required String name,
  }) = _Team;

  /// Generated factory to convert [json] to proper model
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
