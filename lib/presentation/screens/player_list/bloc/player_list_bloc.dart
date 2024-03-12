import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wame_football_test/domain/entities/player_entity.dart';
import 'package:wame_football_test/domain/repositories/player_repository.dart';

part 'player_list_bloc.freezed.dart';
part 'player_list_event.dart';
part 'player_list_state.dart';

/// A BLoC (Business Logic Component) responsible for managing the player list state.
@injectable
class PlayerListBloc extends Bloc<PlayerListEvent, PlayerListState> {
  /// Constructs a new instance of [PlayerListBloc].
  /// [playerRepository] is required for fetching player data.
  PlayerListBloc({required this.playerRepository})
      : super(const PlayerListState.initial()) {
    on<_FetchPlayers>(_onFetchPlayers);
  }

  /// The repository responsible for fetching player data.
  final PlayerRepository playerRepository;

  FutureOr<void> _onFetchPlayers(
    _FetchPlayers event,
    Emitter<PlayerListState> emit,
  ) async {
    try {
      emit(const PlayerListState.loading());

      final players = await playerRepository.fetchPlayers();

      emit(
        PlayerListState.loaded(
          players.$1,
          players.$2,
        ),
      );
    } catch (e) {
      emit(PlayerListState.error(e.toString()));
    }
  }
}
