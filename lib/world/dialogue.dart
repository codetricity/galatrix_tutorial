import 'package:flame/components.dart';
import '../data/dialog_data.dart';
import '../galatrix_game.dart';
import 'dialogue_text_component.dart';

class Dialogue extends PositionComponent with HasGameRef<GalatrixGame> {
  TextBoxComponent characterTextComponent =
      TextBoxComponent(boxConfig: TextBoxConfig(maxWidth: 800));
  late Sprite galatrixSprite;
  late Sprite galatrix2Sprite;
  late Sprite orendaSprite;
  late Sprite nakoaSprite;
  var characterSpriteComponent = SpriteComponent();
  // bool changeCharacter = true;
  final Location location;
  final Character character;
  final String text;
  PositionComponent specialEffect = PositionComponent();

  Dialogue(this.location, this.character, this.text);

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    size = gameRef.size;
    galatrixSprite =
        await gameRef.loadSprite('characters/galatrix_original.webp');
    characterSpriteComponent
      ..size = Vector2.all(200)
      ..anchor = Anchor.bottomLeft
      ..position = Vector2(0, size.y);

    galatrix2Sprite = await gameRef.loadSprite('characters/galatrix_2.webp');

    orendaSprite = await gameRef.loadSprite('characters/orenda_1.jpeg');
    nakoaSprite = await gameRef.loadSprite('characters/nakoa.jpeg');

    switch (character) {
      case Character.galatrix:
        characterSpriteComponent.sprite = galatrixSprite;
        break;
      case Character.galatrix2:
        characterSpriteComponent.sprite = galatrix2Sprite;
        break;
      case Character.orenda:
        characterSpriteComponent.sprite = orendaSprite;
        break;
      case Character.nakoa:
        characterSpriteComponent.sprite = nakoaSprite;
        break;
    }
    add(characterSpriteComponent);

    add(DialogueTextComponent()
      ..anchor = Anchor.bottomLeft
      ..position = Vector2(220, size.y)
      ..size = Vector2(size.x - 220, 200));
    add(specialEffect);
  }
}
