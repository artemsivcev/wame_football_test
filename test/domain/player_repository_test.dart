import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wame_football_test/data/models/player_statistics_response_model.dart';
import 'package:wame_football_test/data/providers/player_api_provider.dart';
import 'package:wame_football_test/data/providers/player_storage_provider.dart';
import 'package:wame_football_test/data/repositories/player_repository.dart';
import 'package:wame_football_test/domain/mappers/player_mapper.dart';

import '../data/models/fake_player_response.dart';
import 'player_repository_test.mocks.dart';

@GenerateMocks([PlayerStorageProvider, PlayerApiProvider])
void main() {
  late PlayerRepositoryImpl repository;
  late MockPlayerStorageProvider mockStorageProvider;
  late MockPlayerApiProvider mockApiProvider;

  setUp(() {
    mockStorageProvider = MockPlayerStorageProvider();
    mockApiProvider = MockPlayerApiProvider();
    repository = PlayerRepositoryImpl(mockStorageProvider, mockApiProvider);
  });

  group('fetchPlayers', () {
    test('returns list of player entities and last updated timestamp',
        () async {
      final currentTime = DateTime(2024);
      await withClock(Clock.fixed(currentTime), () async {
        // Arrange
        final fakePlayerStatistics = getFakePlayerResponse();
        final fakePlayerEntity = PlayerMapper.mapToEntity(fakePlayerStatistics);
        final fakeData = <PlayerStatisticsResponseModel>[fakePlayerStatistics];
        final fakePlayerEntities = [fakePlayerEntity];
        final fakeDateTime = clock.now();
        when(mockStorageProvider.getData()).thenAnswer((_) async => []);
        when(mockStorageProvider.isExpired()).thenAnswer((_) async => true);
        when(mockApiProvider.fetchPlayers()).thenAnswer((_) async => fakeData);
        when(mockStorageProvider.saveData(fakeData)).thenAnswer((_) async {});
        when(mockStorageProvider.getLastUpdated())
            .thenAnswer((_) async => fakeDateTime);

        // Act
        final result = await repository.fetchPlayers();

        // Assert
        expect(result.$1.length, equals(fakePlayerEntities.length));
        expect(result.$2, equals(fakeDateTime));
        verify(mockStorageProvider.getData());
        verify(mockStorageProvider.isExpired());
        verify(mockApiProvider.fetchPlayers());
        verify(mockStorageProvider.saveData(fakeData));
        verify(mockStorageProvider.getLastUpdated());
      });
    });

    test('throws an exception when failed to fetch players', () async {
      // Arrange
      const errorMessage = 'Failed to fetch players';
      when(mockStorageProvider.getData()).thenThrow(Exception(errorMessage));

      // Act
      final result = repository.fetchPlayers();

      // Assert
      expect(result, throwsException);
    });
  });
}
