import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman_game/enemy/ghost_sprite.dart';
import 'package:pacman_game/main.dart';

import 'pacman_sprite.dart';

class PacmanPlayer extends SimplePlayer with ObjectCollision {
  PacmanPlayer()
      : super(
          position: Vector2(tileSize * 5, tileSize * 7),
          size: Vector2(
            tileSize,
            tileSize,
          ),
          speed: 100,
          animation: SimpleDirectionAnimation(
            idleLeft: PacmanSprite.idleLeft,
            runLeft: PacmanSprite.runLeft,
            idleRight: PacmanSprite.idleRight,
            runRight: PacmanSprite.runRight,
            idleUp: PacmanSprite.idleUp,
            runUp: PacmanSprite.runUp,
            idleDown: PacmanSprite.idleDown,
            runDown: PacmanSprite.runDown,
          ),
          life: 1,
        ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(size: Vector2(27, 27), align: Vector2(0, 0)),
      ]),
    );
  }

  @override
  void die() async {
    removeFromParent();
    final sprite = await PacmanSprite.die;
    gameRef.add(
      GameDecoration.withAnimation(
        animation: 
          PacmanSprite.die,
        position: Vector2(
          position.x,
          position.y,
        ),
        size: Vector2.all(30),
      ),
    );
    super.die();
  }
}
