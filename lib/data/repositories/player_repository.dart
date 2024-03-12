import 'package:clock/clock.dart';
import 'package:injectable/injectable.dart';
import 'package:wame_football_test/data/models/player_statistics_response_model.dart';
import 'package:wame_football_test/data/providers/player_api_provider.dart';
import 'package:wame_football_test/data/providers/player_storage_provider.dart';
import 'package:wame_football_test/domain/entities/player_entity.dart';
import 'package:wame_football_test/domain/mappers/player_mapper.dart';
import 'package:wame_football_test/domain/repositories/player_repository.dart';

/// Implementation of [PlayerRepository] interface.
@Injectable(as: PlayerRepository)
class PlayerRepositoryImpl implements PlayerRepository {
  /// Constructs a [PlayerRepositoryImpl] instance with the
  /// provided [_storageProvider] and [_apiProvider].
  PlayerRepositoryImpl(
    this._storageProvider,
    this._apiProvider,
  );

  final PlayerStorageProvider _storageProvider;
  final PlayerApiProvider _apiProvider;

  /// Fetches players data from either cache or API.
  ///
  /// Returns a tuple containing a list of
  /// [PlayerEntity] and the last updated timestamp.
  @override
  Future<(List<PlayerEntity>, DateTime)> fetchPlayers() async {
    try {
      final rawPlayersAndStatistics = <PlayerStatisticsResponseModel>[];

      final cachedData = await _storageProvider.getData();
      final isExpired = await _storageProvider.isExpired();
      var lastUpdated = await _storageProvider.getLastUpdated();
      if (cachedData.isNotEmpty && !isExpired) {
        rawPlayersAndStatistics.addAll(cachedData);
      } else {
        final newData = await _apiProvider.fetchPlayers();
        lastUpdated = clock.now();
        await _storageProvider.saveData(newData);
        rawPlayersAndStatistics.addAll(newData);
      }

      final playerEntities =
          rawPlayersAndStatistics.map(PlayerMapper.mapToEntity).toList();

      return (playerEntities, lastUpdated);
    } catch (error) {
      throw Exception('Failed to fetch players: $error');
    }
  }
}
