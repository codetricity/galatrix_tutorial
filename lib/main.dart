import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  var game = GalatrixGame();
  runApp(GameWidget(game: game));
}

class GalatrixGame extends FlameGame with TapDetector {
  int level = 1;
  var galatrixSprite = SpriteComponent();
  var background = SpriteComponent();
  List<Sprite> backgrounds = [];
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    await loadBackgrounds();
    background = SpriteComponent(sprite: backgrounds[0], size: size);
    add(background);
    galatrixSprite
      ..sprite = await loadSprite('characters/galatrix.jpg')
      ..size = Vector2.all(200)
      ..anchor = Anchor.bottomLeft
      ..position = Vector2(0, size.y);
    add(galatrixSprite);
  }

  @override
  void update(double dt) {
    super.update(dt);
    background.sprite = backgrounds[level - 1];
  }

  @override
  void onTapDown(TapDownInfo info) {
    level++;
    print('level: $level');
    super.onTapDown(info);
  }

  Future<void> loadBackgrounds() async {
    for (int i = 1; i < 5; i++) {
      backgrounds.add(await loadSprite('backgrounds/background_$i.png'));
    }
  }
}
