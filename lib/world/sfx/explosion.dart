import 'package:flame/components.dart';
import 'package:galatrix/main.dart';

class Explosion extends PositionComponent with HasGameRef<GalatrixGame> {
  Explosion() : super(anchor: Anchor.bottomRight);

  SpriteAnimationComponent explosionComponent = SpriteAnimationComponent();
  @override
  Future<void> onLoad() async {
    List<Sprite> sprites = [];
    for (int i = 1; i < 11; i++) {
      sprites.add(await Sprite.load('sfx/explosion/Nuclear_explosion$i.png'));
    }

    explosionComponent
      ..animation =
          SpriteAnimation.spriteList(sprites, stepTime: 0.1, loop: true)
      ..size = gameRef.size / 1.5
      ..position = Vector2(0, 50);
    add(explosionComponent);
    await super.onLoad();
  }

  @override
  void update(double dt) {
    explosionComponent.x += 100 * dt;
    super.update(dt);
  }
}
