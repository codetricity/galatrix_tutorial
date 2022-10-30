import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:galatrix/cubits/storyline/storyline_cubit.dart';

class MarriageChoiceDialog extends StatelessWidget {
  const MarriageChoiceDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Galatrix needs to make a Marriage Choice'),
      content: const Text(
          'Peace, love, home. A dream that is within reach. Orenda left her. '
          'Orenda made her choice. Galatrix must make her choice. Will Galatrix marry Nakoa now?'),
      actions: [
        ElevatedButton(
            onPressed: () {
              // Navigator.pop(context);
              context.read<StorylineCubit>().agreeToMarriage();
            },
            child: Text('yes')),
        ElevatedButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            child: Text('no'))
      ],
    );
  }
}
