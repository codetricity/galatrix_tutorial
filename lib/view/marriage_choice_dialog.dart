import 'package:flutter/material.dart';

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
        ElevatedButton(onPressed: () {}, child: Text('yes')),
        ElevatedButton(onPressed: () {}, child: Text('no'))
      ],
    );
  }
}
