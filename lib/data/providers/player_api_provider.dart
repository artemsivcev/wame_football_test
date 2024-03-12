import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wame_football_test/data/models/player_statistics_response_model.dart';

/// API provider for fetching player statistics
@Injectable()
class PlayerApiProvider {
  /// Default constructor with [_dio] instance to call API
  PlayerApiProvider(this._dio);

  final Dio _dio;

  static const String _apiLinkWithParams =
      'https://api-football-v1.p.rapidapi.com/v3/players/topscorers?league=1&season=2022';
  static const String _apiKey =
      '0263576cf2msh3b17e532e33e124p119ecajsn7cf0b732d5b8';
  static const String _apiHost = 'api-football-v1.p.rapidapi.com';

  /// Fetches player statistics from the API
  /// and returns a list of player statistics models
  ///
  /// Throws an exception if the API call fails
  Future<List<PlayerStatisticsResponseModel>> fetchPlayers() async {
    final response = await _dio.get<Map<String, dynamic>>(
      _apiLinkWithParams,
      options: Options(
        headers: {
          'X-RapidAPI-Key': _apiKey,
          'X-RapidAPI-Host': _apiHost,
        },
      ),
    );

    if (response.statusCode == 200) {
      return (response.data?['response'] as List<dynamic>)
          .map(
            (element) => PlayerStatisticsResponseModel.fromJson(
              element as Map<String, dynamic>,
            ),
          )
          .toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
