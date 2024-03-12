part of 'player_list_bloc.dart';

/// Represents the different states of the player list BLoC.
@freezed
class PlayerListState with _$PlayerListState {
  /// Initial state when the player list BLoC is created.
  const factory PlayerListState.initial() = _Initial;

  /// State indicating that players are being loaded.
  const factory PlayerListState.loading() = _Loading;

  /// State indicating that players have been successfully loaded.
  const factory PlayerListState.loaded(
    List<PlayerEntity> players,
    DateTime lastUpdated,
  ) = _Loaded;

  /// State indicating an error occurred while loading players.
  const factory PlayerListState.error(String error) = _Error;
}
