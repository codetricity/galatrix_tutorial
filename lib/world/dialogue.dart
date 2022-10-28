import 'package:flame/components.dart';
import 'package:galatrix/main.dart';
import '../data/dialog_data.dart';
import 'dialogue_text_component.dart';

class Dialogue extends PositionComponent with HasGameRef<GalatrixGame> {
  TextBoxComponent characterTextComponent =
      TextBoxComponent(boxConfig: TextBoxConfig(maxWidth: 800));
  late Sprite galatrixSprite;
  late Sprite orendaSprite;
  late Sprite nakoaSprite;
  var characterSpriteComponent = SpriteComponent();
  bool changeCharacter = true;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    size = gameRef.size;
    galatrixSprite = await gameRef.loadSprite('characters/galatrix.jpg');
    characterSpriteComponent
      ..sprite = await gameRef.loadSprite('characters/galatrix.jpg')
      ..size = Vector2.all(200)
      ..anchor = Anchor.bottomLeft
      ..position = Vector2(0, size.y);

    orendaSprite = await gameRef.loadSprite('characters/orenda_1.jpeg');
    nakoaSprite = await gameRef.loadSprite('characters/nakoa.jpeg');

    add(characterSpriteComponent);

    add(DialogueTextComponent()
      ..text = dialogs[0]
      ..anchor = Anchor.bottomLeft
      ..position = Vector2(220, size.y)
      ..size = Vector2(size.x - 220, 200));
  }

  @override
  void update(double dt) {
    super.update(dt);
    switch (gameRef.level) {
      case 1:
        // [0] Isle of Dark Souls
        gameRef.background.sprite = gameRef.backgrounds[0];
        break;
      case 3:
        characterSpriteComponent.sprite = nakoaSprite;
        // [6] Valley of Fortune - Nakoa's home
        gameRef.background.sprite = gameRef.backgrounds[6];
        break;
      case 4:
        characterSpriteComponent.sprite = galatrixSprite;
        // [0] Isle of Dark Souls
        gameRef.background.sprite = gameRef.backgrounds[0];
        break;
      case 5:
        characterSpriteComponent.sprite = orendaSprite;
        // [7] Frozen Mountain
        gameRef.background.sprite = gameRef.backgrounds[7];
        break;
      case 7:
        characterSpriteComponent.sprite = galatrixSprite;
        gameRef.background.sprite = gameRef.backgrounds[0];
        break;
      case 8:
        characterSpriteComponent.sprite = nakoaSprite;
        break;
      case 9:
        characterSpriteComponent.sprite = galatrixSprite;
        gameRef.background.sprite = gameRef.backgrounds[3];
        break;
      case 10:
        characterSpriteComponent.sprite = nakoaSprite;
        break;
      case 11:
        characterSpriteComponent.sprite = orendaSprite;
        gameRef.background.sprite = gameRef.backgrounds[4];
        break;
      case 14:
        characterSpriteComponent.sprite = nakoaSprite;
        gameRef.background.sprite = gameRef.backgrounds[5];
        break;
    }
  }
}
