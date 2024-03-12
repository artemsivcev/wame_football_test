part of 'player_list_bloc.dart';

/// Represents the events that can occur in the player list BLoC.
@freezed
class PlayerListEvent with _$PlayerListEvent {
  /// Indicates the event of fetching players.
  const factory PlayerListEvent.fetchPlayers() = _FetchPlayers;
}
