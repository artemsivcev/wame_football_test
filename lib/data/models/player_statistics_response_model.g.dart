// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_statistics_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerStatisticsResponseModelImpl
    _$$PlayerStatisticsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$PlayerStatisticsResponseModelImpl(
          player: Player.fromJson(json['player'] as Map<String, dynamic>),
          statistics: (json['statistics'] as List<dynamic>)
              .map((e) => Statistics.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$PlayerStatisticsResponseModelImplToJson(
        _$PlayerStatisticsResponseModelImpl instance) =>
    <String, dynamic>{
      'player': instance.player,
      'statistics': instance.statistics,
    };
