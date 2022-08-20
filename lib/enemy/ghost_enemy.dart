import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman_game/enemy/ghost_sprite.dart';
import 'package:pacman_game/main.dart';

class GhostEnemy extends SimpleEnemy with ObjectCollision {
  GhostEnemy({
    required Vector2 position,
  }) : super(
          position: position,
          size: Vector2(tileSize, tileSize),
          speed: 50,
          animation: SimpleDirectionAnimation(
            idleLeft: GhostSprite.idleLeft,
            runLeft: GhostSprite.runLeft,
            idleRight: GhostSprite.idleRight,
            runRight: GhostSprite.runRight,
          ),
          life: 4,
        ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(size: Vector2(27, 27), align: Vector2(0, 0)),
      ]),
    );
  }

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
        closePlayer: (player) {
          simpleAttackMelee(
            damage: 1,
            size: Vector2(10,10),
            direction: lastDirection,
          );
        },
        radiusVision: tileSize * 1.7,
        margin: 5,
        );
  
    super.update(dt);
  }
}
