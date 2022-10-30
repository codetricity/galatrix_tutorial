import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:galatrix/cubits/storyline/storyline_cubit.dart';
import 'package:galatrix/world/dialogue.dart';

import 'data/dialog_data.dart';

class GalatrixGame extends FlameGame with TapDetector {
  int level = 1;
  var background = SpriteComponent();
  List<Sprite> backgrounds = [];
  final StorylineCubit storylineCubit;
  GalatrixGame({required this.storylineCubit});

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    await loadBackgrounds();
    background = SpriteComponent(sprite: backgrounds[0], size: size);
    add(background);

    add(dialogues[0]);
  }

  @override
  void onTapDown(TapDownInfo info) {
    if (level == 10) {
      removeAll(children.query<Dialogue>());

      print(' a decison is needed');
      storylineCubit.showMarriageDecisionBox();
    } else if (level < dialogues.length) {
      remove(dialogues[level - 1]);
      add(dialogues[level]);

      switch (dialogues[level].location) {
        case Location.frozenMountain:
          background.sprite = backgrounds[7];
          break;
        case Location.isleOfDarkSouls:
          background.sprite = backgrounds[0];
          break;
        case Location.valleyOfFortune:
          background.sprite = backgrounds[6];
          break;
        case Location.steppesOfSuffering:
          background.sprite = backgrounds[8];
          break;
      }
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
