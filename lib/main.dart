import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:galatrix/cubits/storyline/storyline_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galatrix/flame_game_widget.dart';
import 'package:galatrix/view/flutter_layer.dart';

import 'galatrix_game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();

  runApp(
    BlocProvider<StorylineCubit>(
      create: (context) => StorylineCubit(),
      child: MaterialApp(
        home: Scaffold(
          body: Stack(
            children: const [FlameGameWidget(), FlutterLayer()],
          ),
        ),
      ),
    ),
  );
}
