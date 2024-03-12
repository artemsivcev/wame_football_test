// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsImpl _$$StatisticsImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsImpl(
      cards: Cards.fromJson(json['cards'] as Map<String, dynamic>),
      duels: Duels.fromJson(json['duels'] as Map<String, dynamic>),
      fouls: Fouls.fromJson(json['fouls'] as Map<String, dynamic>),
      games: Games.fromJson(json['games'] as Map<String, dynamic>),
      goals: Goals.fromJson(json['goals'] as Map<String, dynamic>),
      league: League.fromJson(json['league'] as Map<String, dynamic>),
      passes: Passes.fromJson(json['passes'] as Map<String, dynamic>),
      penalty: Penalty.fromJson(json['penalty'] as Map<String, dynamic>),
      shots: Shots.fromJson(json['shots'] as Map<String, dynamic>),
      tackles: Tackles.fromJson(json['tackles'] as Map<String, dynamic>),
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatisticsImplToJson(_$StatisticsImpl instance) =>
    <String, dynamic>{
      'cards': instance.cards,
      'duels': instance.duels,
      'fouls': instance.fouls,
      'games': instance.games,
      'goals': instance.goals,
      'league': instance.league,
      'passes': instance.passes,
      'penalty': instance.penalty,
      'shots': instance.shots,
      'tackles': instance.tackles,
      'team': instance.team,
    };

_$CardsImpl _$$CardsImplFromJson(Map<String, dynamic> json) => _$CardsImpl(
      red: json['red'] as int,
      yellow: json['yellow'] as int,
      yellowred: json['yellowred'] as int,
    );

Map<String, dynamic> _$$CardsImplToJson(_$CardsImpl instance) =>
    <String, dynamic>{
      'red': instance.red,
      'yellow': instance.yellow,
      'yellowred': instance.yellowred,
    };

_$DuelsImpl _$$DuelsImplFromJson(Map<String, dynamic> json) => _$DuelsImpl(
      total: json['total'] as int,
      won: json['won'] as int,
    );

Map<String, dynamic> _$$DuelsImplToJson(_$DuelsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'won': instance.won,
    };

_$FoulsImpl _$$FoulsImplFromJson(Map<String, dynamic> json) => _$FoulsImpl(
      committed: json['committed'] as int?,
      drawn: json['drawn'] as int?,
    );

Map<String, dynamic> _$$FoulsImplToJson(_$FoulsImpl instance) =>
    <String, dynamic>{
      'committed': instance.committed,
      'drawn': instance.drawn,
    };

_$GamesImpl _$$GamesImplFromJson(Map<String, dynamic> json) => _$GamesImpl(
      appearences: json['appearences'] as int,
      captain: json['captain'] as bool,
      lineups: json['lineups'] as int,
      minutes: json['minutes'] as int,
      number: json['number'] as String?,
      position: json['position'] as String,
      rating: json['rating'] as String,
    );

Map<String, dynamic> _$$GamesImplToJson(_$GamesImpl instance) =>
    <String, dynamic>{
      'appearences': instance.appearences,
      'captain': instance.captain,
      'lineups': instance.lineups,
      'minutes': instance.minutes,
      'number': instance.number,
      'position': instance.position,
      'rating': instance.rating,
    };

_$GoalsImpl _$$GoalsImplFromJson(Map<String, dynamic> json) => _$GoalsImpl(
      assists: json['assists'] as int?,
      conceded: json['conceded'] as int?,
      saves: json['saves'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$GoalsImplToJson(_$GoalsImpl instance) =>
    <String, dynamic>{
      'assists': instance.assists,
      'conceded': instance.conceded,
      'saves': instance.saves,
      'total': instance.total,
    };

_$LeagueImpl _$$LeagueImplFromJson(Map<String, dynamic> json) => _$LeagueImpl(
      country: json['country'] as String,
      flag: json['flag'] as String?,
      id: json['id'] as int,
      logo: json['logo'] as String,
      name: json['name'] as String,
      season: json['season'] as int,
    );

Map<String, dynamic> _$$LeagueImplToJson(_$LeagueImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'flag': instance.flag,
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'season': instance.season,
    };

_$PassesImpl _$$PassesImplFromJson(Map<String, dynamic> json) => _$PassesImpl(
      accuracy: json['accuracy'] as int?,
      key: json['key'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$PassesImplToJson(_$PassesImpl instance) =>
    <String, dynamic>{
      'accuracy': instance.accuracy,
      'key': instance.key,
      'total': instance.total,
    };

_$PenaltyImpl _$$PenaltyImplFromJson(Map<String, dynamic> json) =>
    _$PenaltyImpl(
      commited: json['commited'] as int?,
      missed: json['missed'] as int,
      saved: json['saved'] as int?,
      scored: json['scored'] as int,
      won: json['won'] as int?,
    );

Map<String, dynamic> _$$PenaltyImplToJson(_$PenaltyImpl instance) =>
    <String, dynamic>{
      'commited': instance.commited,
      'missed': instance.missed,
      'saved': instance.saved,
      'scored': instance.scored,
      'won': instance.won,
    };

_$ShotsImpl _$$ShotsImplFromJson(Map<String, dynamic> json) => _$ShotsImpl(
      on: json['on'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$ShotsImplToJson(_$ShotsImpl instance) =>
    <String, dynamic>{
      'on': instance.on,
      'total': instance.total,
    };

_$TacklesImpl _$$TacklesImplFromJson(Map<String, dynamic> json) =>
    _$TacklesImpl(
      blocks: json['blocks'] as int?,
      interceptions: json['interceptions'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$TacklesImplToJson(_$TacklesImpl instance) =>
    <String, dynamic>{
      'blocks': instance.blocks,
      'interceptions': instance.interceptions,
      'total': instance.total,
    };

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      id: json['id'] as int,
      logo: json['logo'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
    };
