import 'package:bonfire/bonfire.dart';

class PacmanSprite {
  static Future<SpriteAnimation> _sequenceImage(
    String fileName, {
    int amount = 1,
  }) {
    return SpriteAnimation.load(
      'player/$fileName',
      SpriteAnimationData.sequenced(
          amount: amount,
          stepTime: 0.15,
          textureSize: Vector2(20, 20),
          texturePosition: Vector2(0, 0)),
    );
  }

  static Future<SpriteAnimation> get idleLeft =>
      _sequenceImage('pacman_idle_left.png');
  static Future<SpriteAnimation> get idleRight =>
      _sequenceImage('pacman_idle_right.png');
  static Future<SpriteAnimation> get idleUp =>
      _sequenceImage('pacman_idle_up.png');
  static Future<SpriteAnimation> get idleDown =>
      _sequenceImage('pacman_idle_down.png');

  static Future<SpriteAnimation> get runLeft =>
      _sequenceImage('pacman_run_left.png', amount: 3);
  static Future<SpriteAnimation> get runRight =>
      _sequenceImage('pacman_run_right.png', amount: 3);
  static Future<SpriteAnimation> get runUp =>
      _sequenceImage('pacman_run_up.png', amount: 3);
  static Future<SpriteAnimation> get runDown =>
      _sequenceImage('pacman_run_down.png', amount: 3);

  static Future<SpriteAnimation> get die =>
      _sequenceImage('pacman_die.png', amount: 11);
}
