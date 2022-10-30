import 'package:flame/game.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galatrix/cubits/storyline/storyline_cubit.dart';
import 'package:galatrix/galatrix_game.dart';

class FlameGameWidget extends StatelessWidget {
  const FlameGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: GalatrixGame(storylineCubit: context.read<StorylineCubit>()),
    );
  }
}
