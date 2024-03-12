import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wame_football_test/domain/entities/player_entity.dart';
import 'package:wame_football_test/presentation/screens/player_info/widgets/animated_hexagon_statistic.dart';

/// A screen widget for displaying detailed information about a player.
class PlayerInfoScreen extends StatelessWidget {
  /// Constructs a new instance of [PlayerInfoScreen] with the provided [player].
  const PlayerInfoScreen({super.key, required this.player});

  /// The player entity whose information will be displayed on this screen.
  final PlayerEntity player;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${player.firstname} ${player.lastname}'),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Hero(
                    tag: player.photo,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                      ),
                      child: Image.network(
                        player.photo,
                        scale: 0.75,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.extent(
                      maxCrossAxisExtent: 400,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 8,
                      childAspectRatio: 12,
                      children: player.getPlayerInfo().entries.map((item) {
                        return _InfoRow(
                          name: item.key,
                          value: item.value,
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            AnimatedHexagonStatistic(
              values: [
                Random().nextInt(51) + 50,
                Random().nextInt(51) + 50,
                Random().nextInt(51) + 50,
                Random().nextInt(51) + 50,
                Random().nextInt(51) + 50,
                Random().nextInt(51) + 50,
              ],
              labels: const [
                'DRI',
                'DEF',
                'PHY',
                'PACE',
                'SHOOT',
                'PASS',
              ],
              size: MediaQuery.of(context).size.width / 1.5,
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 64,
          child: Text(name),
        ),
        Text(value),
      ],
    );
  }
}
