import 'package:flame/components.dart';
import 'package:galatrix/main.dart';

class Explosion extends PositionComponent with HasGameRef<GalatrixGame> {
  Explosion() : super(anchor: Anchor.bottomCenter);

  SpriteComponent explosionComponent = SpriteComponent();
  @override
  Future<void> onLoad() async {
    explosionComponent
      ..sprite =
          await gameRef.loadSprite('sfx/explosion/Nuclear_explosion7.png')
      ..size = gameRef.size / 1.5
      ..position = Vector2(200, 50);
    add(explosionComponent);
    await super.onLoad();
  }
}
