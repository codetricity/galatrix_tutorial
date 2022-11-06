import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galatrix/cubits/storyline/storyline_cubit.dart';

class FlutterLayer extends StatelessWidget {
  const FlutterLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StorylineCubit, StorylineState>(
        listener: ((context, state) {
      if (state.showMarriageDecisionBox) {
        print('from flutter layer');
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: const Text(
                    'Are you making a decision to change the storyline'),
                actions: [
                  ElevatedButton(
                      onPressed: () async {
                        context.read<StorylineCubit>().changeStoryline();
                        context
                            .read<StorylineCubit>()
                            .hideMarriageDecisionBox();
                        Navigator.of(context).pop();
                      },
                      child: const Text('yes')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<StorylineCubit>().continueStoryline();
                        context
                            .read<StorylineCubit>()
                            .hideMarriageDecisionBox();
                        Navigator.of(context).pop();
                      },
                      child: const Text('no')),
                ],
              );
            });
      }
    }), builder: (context, state) {
      {
        return Container();
      }
    });
  }
}
