import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:galatrix/main.dart';

import '../data/dialog_data.dart';

class DialogueTextComponent extends TextBoxComponent
    with HasGameRef<GalatrixGame> {
  DialogueTextComponent()
      : super(size: Vector2(800, 160), boxConfig: TextBoxConfig(maxWidth: 800));

  @override
  void render(Canvas c) {
    final rect = Rect.fromLTWH(0, 0, width, height);
    c.drawRect(rect, Paint()..color = const Color.fromARGB(180, 63, 63, 63));
    super.render(c);
  }

  @override
  void update(double dt) {
    text = dialogs[gameRef.level - 1].text;
    super.update(dt);
  }
}
