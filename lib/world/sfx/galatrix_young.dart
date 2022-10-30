import 'package:flame/components.dart';
import '../../galatrix_game.dart';

class GalatrixYoung extends PositionComponent with HasGameRef<GalatrixGame> {
  GalatrixYoung() : super(anchor: Anchor.bottomRight);

  SpriteComponent galatrixYoungComponent = SpriteComponent();
  @override
  Future<void> onLoad() async {
    var charHeight = gameRef.size.y / 2;
    galatrixYoungComponent
      ..sprite = await gameRef.loadSprite('sfx/actors/galatrix_young.png')
      ..size = Vector2(750 / 1200 * charHeight, charHeight)
      ..position = Vector2(0, 50);
    add(galatrixYoungComponent);
    await super.onLoad();
  }

  @override
  void update(double dt) {
    galatrixYoungComponent.x += 100 * dt;
    super.update(dt);
  }
}
