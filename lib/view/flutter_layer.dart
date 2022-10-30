import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galatrix/cubits/storyline/storyline_cubit.dart';

import 'marriage_choice_dialog.dart';

class FlutterLayer extends StatelessWidget {
  const FlutterLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StorylineCubit, StorylineState>(
      listener: (context, state) {
        if (state is StorylineMarriageDecision) {
          showDialog(
              context: context,
              builder: ((context) {
                return const MarriageChoiceDialog();
              }));
        }
      },
      builder: (context, state) {
        return Container();
      },
    );
  }
}
