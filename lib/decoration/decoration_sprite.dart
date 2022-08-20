import 'package:bonfire/bonfire.dart';

class DecorationSprite {
  static Future<Sprite> get point => Sprite.load(
    'maps/environment.png',
    srcPosition: Vector2(20, 20),
    srcSize: Vector2(20, 20),
  );
}
