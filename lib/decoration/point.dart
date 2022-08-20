import 'package:bonfire/bonfire.dart';

import 'decoration_sprite.dart';

class Point extends GameDecoration {
  Point({
    required Vector2 position,
  }) : super.withSprite(
          sprite: DecorationSprite.point,
          position: position,
          size: Vector2(20, 20),
        );
}
