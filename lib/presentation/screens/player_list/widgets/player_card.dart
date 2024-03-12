import 'package:flutter/material.dart';
import 'package:wame_football_test/domain/entities/player_entity.dart';
import 'package:wame_football_test/presentation/screens/player_info/player_info_screen.dart';

/// Widget representing a card displaying information about a player.
class PlayerCard extends StatelessWidget {
  /// Constructor for creating a PlayerCard widget.
  const PlayerCard({
    required this.position,
    required this.player,
    super.key,
  });

  /// The position of the player in the list.
  final int position;

  /// The player entity containing information about the player.
  final PlayerEntity player;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => PlayerInfoScreen(player: player),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Container(
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Hero(
                  tag: player.photo,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(16),
                    ),
                    child: Image.network(
                      player.photo,
                      scale: 0.75,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      player.firstname,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      player.lastname,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Image.network(
                          player.statistics.team.logo,
                          height: 32,
                          width: 32,
                        ),
                        const Spacer(),
                        Text(
                          '#$position',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.2),
                            fontSize: 52,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Spacer(flex: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
