import 'package:flutter/material.dart';

import 'custom_button.dart';

void amin() {
  runApp(const MaterialApp(home: ButtonPage()));
}

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Button')),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(label: 'Time', icon: Icons.check),

            const SizedBox(height: 20),

            CustomButton(
              label: 'Account',
              icon: Icons.account_tree,
              type: ButtonType.disabled,
            ),
          ],
        ),
      ),
    );
  }
}
