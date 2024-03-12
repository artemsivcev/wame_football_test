import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wame_football_test/data/providers/player_api_provider.dart';

import 'models/raw_api_response.dart';
import 'player_api_provider_test.mocks.dart';


@GenerateMocks([Dio])
void main() {
  test('PlayerApiProvider should fetch players data from API', () async {
    // Create an instance of the mock Dio client
    final mockDio = MockDio();

    // Create an instance of the API provider with the mock Dio client
    final apiProvider = PlayerApiProvider(mockDio);

    // Define mock behavior for Dio client
    when(mockDio.get<Map<String, dynamic>>(any, options: anyNamed('options'))).thenAnswer(
      (_) async => Response(
        data: rawJsonData,
        statusCode: 200,
        requestOptions: RequestOptions(
          method: 'GET',
          path: 'mock/path',
          baseUrl: 'https://api.example.com',
        ),
      ),
    );

    // Execute the fetchPlayers method
    final players = await apiProvider.fetchPlayers();

    // Verify the result
    expect(players, isNotEmpty);
  });
}
