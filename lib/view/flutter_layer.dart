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
            builder: ((BuildContext context) {
              return AlertDialog(
                title: const Text('Marriage Choice'),
                content: const Text(
                    'Peace, love, home. A dream that is within reach. Orenda left me. '
                    'She made her choice. I must make a choice'),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<StorylineCubit>(context)
                            .agreeToMarriage();
                        // context.watch<StorylineCubit>().agreeToMarriage();
                        Navigator.of(context).pop();
                      },
                      child: Text('yes')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('no'))
                ],
              );
            }),
          );
        }
      },
      builder: (context, state) {
        return Container();
      },
    );
  }
}
