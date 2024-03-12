import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wame_football_test/data/models/player_model.dart';
import 'package:wame_football_test/data/models/statistics_model.dart';

part 'player_statistics_response_model.freezed.dart';
part 'player_statistics_response_model.g.dart';

/// Raw data class
@freezed
class PlayerStatisticsResponseModel with _$PlayerStatisticsResponseModel {
  /// Default constructor
  factory PlayerStatisticsResponseModel({
    required Player player,
    required List<Statistics> statistics,
  }) = _PlayerStatisticsResponseModel;

  /// Generated factory to convert [json] to proper model
  factory PlayerStatisticsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatisticsResponseModelFromJson(json);
}
