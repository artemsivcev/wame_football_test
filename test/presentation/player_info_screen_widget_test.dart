import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:wame_football_test/domain/mappers/player_mapper.dart';
import 'package:wame_football_test/presentation/screens/player_info/player_info_screen.dart';

import '../data/models/fake_player_response.dart';

void main() {
  testWidgets('PlayerInfoScreen widget test', (WidgetTester tester) async {
    // Create a mock player entity
    final fakePlayerStatistics = getFakePlayerResponse();
    final fakePlayerEntity = PlayerMapper.mapToEntity(fakePlayerStatistics);

    // Build the PlayerInfoScreen widget
    await mockNetworkImagesFor(
      () => tester.pumpWidget(
        MaterialApp(
          home: PlayerInfoScreen(player: fakePlayerEntity),
        ),
      ),
    );

    // Verify if the screen is rendered correctly
    expect(find.text('Harry Kane'), findsOneWidget);
    expect(find.text('Age'), findsOneWidget);
    expect(find.text('28'), findsOneWidget);
  });
}
