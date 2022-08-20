import 'package:bonfire/bonfire.dart';

class GhostSprite {
  static Future<SpriteAnimation> _sequenceImage(
    String fileName, {
    int amount = 1,
  }) {
    return SpriteAnimation.load(
      'ghost/$fileName',
      SpriteAnimationData.sequenced(
          amount: amount,
          stepTime: 0.15,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(0, 0)),
    );
  }

  static Future<SpriteAnimation> get idleLeft =>
      _sequenceImage('ghost_red_idle_left.png');

  static Future<SpriteAnimation> get idleRight =>
      _sequenceImage('ghost_red_idle_right.png');

  static Future<SpriteAnimation> get runLeft =>
      _sequenceImage('ghost_red_run_left.png', amount: 2);

  static Future<SpriteAnimation> get runRight =>
      _sequenceImage('ghost_red_run_right.png', amount: 2);

  static Future<SpriteAnimation> get die =>
      _sequenceImage('ghost_die.png');
}
