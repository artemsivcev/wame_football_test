import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_model.freezed.dart';
part 'player_model.g.dart';

/// Raw data class
@freezed
class Player with _$Player {
  /// Default constructor
  factory Player({
    required int id,
    required String firstname,
    required String lastname,
    required String name,
    required String nationality,
    required String photo,
    required int age,
    required String height,
    required String weight,
    required Birth birth,
  }) = _Player;

  /// Generated factory to convert [json] to proper model
  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

/// Raw data class
@freezed
class Birth with _$Birth {
  /// Default constructor
  factory Birth({
    required String country,
    required String date,
    required String place,
  }) = _Birth;

  /// Generated factory to convert [json] to proper model
  factory Birth.fromJson(Map<String, dynamic> json) => _$BirthFromJson(json);
}
