import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:galatrix/data/dialog_data.dart';
import 'package:galatrix/world/dialogue.dart';

void main() {
  var game = GalatrixGame();
  runApp(GameWidget(game: game));
}

class GalatrixGame extends FlameGame with TapDetector {
  int level = 1;
  var background = SpriteComponent();
  List<Sprite> backgrounds = [];

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    await loadBackgrounds();
    background = SpriteComponent(sprite: backgrounds[0], size: size);
    add(background);

    add(Dialogue());
  }

  @override
  void onTapDown(TapDownInfo info) {
    if (level < dialogs.length) {
      level++;
      print('level: $level');
    }
    super.onTapDown(info);
  }

  Future<void> loadBackgrounds() async {
    for (int i = 1; i < 10; i++) {
      backgrounds.add(await loadSprite('backgrounds/background_$i.webp'));
    }
  }
}
