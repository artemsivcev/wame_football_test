import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wame_football_test/data/utilities/bloc/bloc_factory.dart';
import 'package:wame_football_test/data/utilities/extensions/date_time_extension.dart';
import 'package:wame_football_test/presentation/screens/player_list/bloc/player_list_bloc.dart';
import 'package:wame_football_test/presentation/screens/player_list/widgets/player_card.dart';

/// Widget representing the screen displaying a list of players.
class PlayerListScreen extends StatefulWidget {
  /// Constructor for creating a PlayerListScreen widget.
  const PlayerListScreen({super.key});

  @override
  State<PlayerListScreen> createState() => _PlayerListScreenState();
}

class _PlayerListScreenState extends State<PlayerListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => context.read<BlocFactory>().create<PlayerListBloc>()
        ..add(const PlayerListEvent.fetchPlayers()),
      child: BlocConsumer<PlayerListBloc, PlayerListState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(error)),
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                const Positioned.fill(child: BackgroundWidget()),
                Stack(
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 16),
                            const Text(
                              'Euro Championship 2022',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const Text(
                              'Top Scorers',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            state.when(
                              error: (error) {
                                return const Center(
                                  child: Text('Try Again Later'),
                                );
                              },
                              initial: () {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                              loading: () {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                              loaded: (players, _) {
                                return Expanded(
                                  child: RefreshIndicator(
                                    onRefresh: () async {
                                      context.read<PlayerListBloc>().add(
                                            const PlayerListEvent
                                                .fetchPlayers(),
                                          );
                                    },
                                    child: GridView.builder(
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount:
                                            MediaQuery.of(context).size.width >
                                                    750
                                                ? 2
                                                : 1,
                                        crossAxisSpacing: 16,
                                        mainAxisSpacing: 16,
                                        childAspectRatio: 1.5,
                                      ),
                                      itemCount: players.length,
                                      itemBuilder: (context, index) {
                                        return PlayerCard(
                                          position: index + 1,
                                          player: players[index],
                                        );
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Last Updated: ${(state.whenOrNull(loaded: (_, lastUpdated) => lastUpdated) ?? DateTime.now()).timeAgo()}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// Widget representing the background of the player list screen.
class BackgroundWidget extends StatelessWidget {
  /// Constructor for creating a BackgroundWidget widget.
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
          ),
        ),
        Positioned(
          top: -(MediaQuery.of(context).size.height / 1.4),
          right: -(MediaQuery.of(context).size.width / 2),
          child: Container(
            width: MediaQuery.of(context).size.width * 1.6,
            height: MediaQuery.of(context).size.height * 1.6,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.orange, Colors.deepOrange],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
