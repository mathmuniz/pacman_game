import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman_game/main.dart';
import '../enemy/ghost_enemy.dart';
import '../player/pacman_player.dart';

class Level01 extends StatefulWidget {
  const Level01({super.key});

  @override
  State<Level01> createState() => _Level01State();
}

class _Level01State extends State<Level01> {
  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
        keyboardConfig: KeyboardConfig(
          keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows,
        ),
      ),
      map: TiledWorldMap(
        'maps/map_01.json',
        forceTileSize: const Size(32, 32),
      ),
      player: PacmanPlayer(),
      components: [
        GhostEnemy(position: Vector2(tileSize * 4, tileSize * 5)),
      ],
      cameraConfig: CameraConfig(
        zoom: 1.0,
        moveOnlyMapArea: true,
      ),
    );
  }
}
